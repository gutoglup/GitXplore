//
//  RepositoryResponse.swift
//
//  Created by Augusto Cesar do Nascimento dos Reis on 13/12/20
//  Copyright (c) ACNR. All rights reserved.
//

import Foundation

struct RepositoryResponse: Decodable {

    var items: [ItemsResponse]?
    var incompleteResults: Bool?
    var totalCount: Int?

    enum CodingKeys: String, CodingKey {
        case items
        case incompleteResults = "incomplete_results"
        case totalCount = "total_count"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        items = try container.decodeIfPresent([ItemsResponse].self, forKey: .items)
        incompleteResults = try container.decodeIfPresent(Bool.self, forKey: .incompleteResults)
        totalCount = try container.decodeIfPresent(Int.self, forKey: .totalCount)
    }

}
