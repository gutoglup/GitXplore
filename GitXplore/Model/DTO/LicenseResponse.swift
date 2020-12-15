//
//  LicenseResponse.swift
//
//  Created by Augusto Cesar do Nascimento dos Reis on 13/12/20
//  Copyright (c) ACNR. All rights reserved.
//

import Foundation

struct LicenseResponse: Decodable {

  enum CodingKeys: String, CodingKey {
    case url
    case spdxId = "spdx_id"
    case key
    case nodeId = "node_id"
    case name
  }

  let url: String?
  let spdxId: String?
  let key: String?
  let nodeId: String?
  let name: String?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    url = try container.decodeIfPresent(String.self, forKey: .url)
    spdxId = try container.decodeIfPresent(String.self, forKey: .spdxId)
    key = try container.decodeIfPresent(String.self, forKey: .key)
    nodeId = try container.decodeIfPresent(String.self, forKey: .nodeId)
    name = try container.decodeIfPresent(String.self, forKey: .name)
  }

}
