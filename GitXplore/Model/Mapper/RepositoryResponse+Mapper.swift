//
//  RepositoryResponse+Mapper.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import Foundation

extension RepositoryResponse {
    func toDomain() -> Repository {
        let items = self.items?.compactMap { $0.toDomain() }

        return Repository(items: items, incompleteResults: incompleteResults, totalCount: totalCount)
    }
}
