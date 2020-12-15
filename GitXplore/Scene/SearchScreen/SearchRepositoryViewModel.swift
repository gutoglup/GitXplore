//
//  SearchRepositoryViewModel.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 12/12/20.
//

import Foundation
import RxSwift

protocol SearchRepositoryViewModeling {
    func searchRepository(query: String?)
}

final class SearchRepositoryViewModel {
    weak var viewController: SearchRepositoryDisplay?
    private var service: RepositoryServicing
    private var disposeBag: DisposeBag = DisposeBag()

    init(service: RepositoryServicing) {
        self.service = service
    }
}

extension SearchRepositoryViewModel: SearchRepositoryViewModeling {
    func searchRepository(query: String?) {
        guard let query = query,
              !query.isEmpty else {
            viewController?.onErrorSearchRepository(title: "Alerta", message: "Informe um nome para realizar a pesquisa")
            return
        }

        service.searchRepository(query: query).subscribe { (response) in
            print(response)
        } onError: { (error) in
            self.viewController?.onErrorSearchRepository(title: "Ocorreu um erro", message: error.localizedDescription)
        }.disposed(by: disposeBag)
    }
}
