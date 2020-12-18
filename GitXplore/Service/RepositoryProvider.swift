//
//  RepositoryProvider.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 12/12/20.
//

import Foundation
import Moya

enum RepositoryProvider {
    case searchRepository(term: String)
}

extension RepositoryProvider: TargetType {
    var baseURL: URL {
        guard let url = URL(string: "https://api.github.com") else {
            return URL(fileURLWithPath: "")
        }
        return url
    }

    var path: String {
        switch self {
        case .searchRepository(term: _):
            return "/search/repositories"
        }
    }

    var method: Moya.Method {
        return .get
    }

    var sampleData: Data {
        return "{\"total_count\":41510,\"incomplete_results\":false,\"items\":[{\"id\":7508411,\"node_id\":\"MDEwOlJlcG9zaXRvcnk3NTA4NDEx\",\"name\":\"RxJava\",\"full_name\":\"ReactiveX/RxJava\",\"private\":false}]}".data(using: .utf8) ?? Data()
    }

    var task: Task {
        switch self {
        case .searchRepository(term: let term):
            let parameters = ["q": term]
            return .requestParameters(parameters: parameters, encoding: URLEncoding.queryString)
        }
    }

    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }


}
