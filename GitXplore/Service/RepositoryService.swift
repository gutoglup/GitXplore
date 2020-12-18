//
//  RepositoryService.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 12/12/20.
//

import Foundation
import Moya
import RxSwift

protocol RepositoryServicing {
    func searchRepository(query: String) -> PrimitiveSequence<SingleTrait, RepositoryResponse>
}

final class RepositoryService: RepositoryServicing {
    let provider = MoyaProvider<RepositoryProvider>()

    func searchRepository(query: String) -> PrimitiveSequence<SingleTrait, RepositoryResponse> {
        return provider.rx.request(.searchRepository(term: query))
            .filterSuccessfulStatusCodes()
            .map(RepositoryResponse.self)
    }
}

