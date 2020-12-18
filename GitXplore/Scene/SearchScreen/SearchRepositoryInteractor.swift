//
//  SearchRepositoryInteractor.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 13/12/20.
//

import Foundation
import RxSwift

protocol SearchRepositoryInteracting {
    func searchRepository(query: String?)
    func listRecentSearchs()
}

final class SearchRepositoryInteractor {
    private let service: RepositoryServicing
    private let presenter: SearchRepositoryPresenting
    private var repository: Repository?
    private var disposeBag: DisposeBag = DisposeBag()
    private var searchRepository: SearchRepositoring

    init(service: RepositoryServicing, presenter: SearchRepositoryPresenting, searchRepository: SearchRepositoring) {
        self.service = service
        self.presenter = presenter
        self.searchRepository = searchRepository
    }
}

extension SearchRepositoryInteractor:SearchRepositoryInteracting {
    func listRecentSearchs() {
        guard let searchItems = searchRepository.listItems() else { return }
        presenter.listRecentSearchs(items: searchItems)
    }

    func searchRepository(query: String?) {
        guard let query = query,
              !query.isEmpty else {
            presenter.onErrorSearchRepository(title: "Alerta", message: "Informe um nome para realizar a pesquisa")
            return
        }

        if let searchItem = searchRepository.searchItem(by: query) {
            self.repository = searchItem.repository
            self.presenter.list(repository: searchItem.repository, term: query)
        } else {
            service.searchRepository(query: query)
                .map({ $0.toDomain() })
                .subscribe { (repository) in
                    self.repository = repository
                    self.searchRepository.add(new: SearchItem(title: query, date: Date(), repository: repository))
                    self.presenter.list(repository: repository, term: query)
                } onError: { (error) in
                    self.presenter.onErrorSearchRepository(title: "Ocorreu um erro", message: error.localizedDescription)
                }
                .disposed(by: disposeBag)
        }
    }
}
