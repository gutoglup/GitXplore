//
//  OwnerResponse+Mapper.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import Foundation

extension OwnerResponse {

    func toDomain() -> Owner {
        return Owner(
            followersUrl: followersUrl,
            htmlUrl: htmlUrl,
            type: type,
            starredUrl: starredUrl,
            gravatarId: gravatarId,
            subscriptionsUrl: subscriptionsUrl,
            id: id,
            reposUrl: reposUrl,
            siteAdmin: siteAdmin,
            url: url,
            nodeId: nodeId,
            eventsUrl: eventsUrl,
            organizationsUrl: organizationsUrl,
            receivedEventsUrl: receivedEventsUrl,
            login: login,
            gistsUrl: gistsUrl,
            followingUrl: followersUrl,
            avatarUrl: avatarUrl)
    }
}
