//
//  LicenseResponse+Mapper.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import Foundation

extension LicenseResponse {
    func toDomain() -> License {
        return License(
            url: url,
            spdxId: spdxId,
            key: key,
            nodeId: nodeId,
            name: name)
    }
}
