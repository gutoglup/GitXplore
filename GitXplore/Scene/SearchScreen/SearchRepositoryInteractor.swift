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
}

final class SearchRepositoryInteractor {
    private let service: RepositoryServicing
    private let presenter: SearchRepositoryPresenting
    private var repository: Repository?
    private var disposeBag: DisposeBag = DisposeBag()

    init(service: RepositoryServicing, presenter: SearchRepositoryPresenting) {
        self.service = service
        self.presenter = presenter
    }
}

extension SearchRepositoryInteractor:SearchRepositoryInteracting {
    func searchRepository(query: String?) {

        guard let query = query,
              !query.isEmpty else {
            presenter.onErrorSearchRepository(title: "Alerta", message: "Informe um nome para realizar a pesquisa")
            return
        }

        service.searchRepository(query: query)
            .map({ $0.toDomain() })
            .subscribe { (repository) in
                self.repository = repository
                self.presenter.list(repository: repository, term: query)
            } onError: { (error) in
                self.presenter.onErrorSearchRepository(title: "Ocorreu um erro", message: error.localizedDescription)
            }
            .disposed(by: disposeBag)
    }
}
