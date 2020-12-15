//
//  OwnerResponse.swift
//
//  Created by Augusto Cesar do Nascimento dos Reis on 13/12/20
//  Copyright (c) ACNR. All rights reserved.
//

import Foundation

struct OwnerResponse: Decodable {

  enum CodingKeys: String, CodingKey {
    case followersUrl = "followers_url"
    case htmlUrl = "html_url"
    case type
    case starredUrl = "starred_url"
    case gravatarId = "gravatar_id"
    case subscriptionsUrl = "subscriptions_url"
    case id
    case reposUrl = "repos_url"
    case siteAdmin = "site_admin"
    case url
    case nodeId = "node_id"
    case eventsUrl = "events_url"
    case organizationsUrl = "organizations_url"
    case receivedEventsUrl = "received_events_url"
    case login
    case gistsUrl = "gists_url"
    case followingUrl = "following_url"
    case avatarUrl = "avatar_url"
  }

  let followersUrl: String?
  let htmlUrl: String?
  let type: String?
  let starredUrl: String?
  let gravatarId: String?
  let subscriptionsUrl: String?
  let id: Int?
  let reposUrl: String?
  let siteAdmin: Bool?
  let url: String?
  let nodeId: String?
  let eventsUrl: String?
  let organizationsUrl: String?
  let receivedEventsUrl: String?
  let login: String?
  let gistsUrl: String?
  let followingUrl: String?
  let avatarUrl: String?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    followersUrl = try container.decodeIfPresent(String.self, forKey: .followersUrl)
    htmlUrl = try container.decodeIfPresent(String.self, forKey: .htmlUrl)
    type = try container.decodeIfPresent(String.self, forKey: .type)
    starredUrl = try container.decodeIfPresent(String.self, forKey: .starredUrl)
    gravatarId = try container.decodeIfPresent(String.self, forKey: .gravatarId)
    subscriptionsUrl = try container.decodeIfPresent(String.self, forKey: .subscriptionsUrl)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
    reposUrl = try container.decodeIfPresent(String.self, forKey: .reposUrl)
    siteAdmin = try container.decodeIfPresent(Bool.self, forKey: .siteAdmin)
    url = try container.decodeIfPresent(String.self, forKey: .url)
    nodeId = try container.decodeIfPresent(String.self, forKey: .nodeId)
    eventsUrl = try container.decodeIfPresent(String.self, forKey: .eventsUrl)
    organizationsUrl = try container.decodeIfPresent(String.self, forKey: .organizationsUrl)
    receivedEventsUrl = try container.decodeIfPresent(String.self, forKey: .receivedEventsUrl)
    login = try container.decodeIfPresent(String.self, forKey: .login)
    gistsUrl = try container.decodeIfPresent(String.self, forKey: .gistsUrl)
    followingUrl = try container.decodeIfPresent(String.self, forKey: .followingUrl)
    avatarUrl = try container.decodeIfPresent(String.self, forKey: .avatarUrl)
  }

}
