//
//  SearchRepositoryInteractor.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 13/12/20.
//

import Foundation

protocol SearchRepositoryInteracting {

}

final class SearchRepositoryInteractor {
    private var service: RepositoryServicing

    init(service: RepositoryServicing) {
        self.service = service
    }
}

extension SearchRepositoryInteractor:SearchRepositoryInteracting {
    func searchRepository(query: String) {
        service.searchRepository(query: query).map { (response) -> String in
            response.
        }
    }
}
