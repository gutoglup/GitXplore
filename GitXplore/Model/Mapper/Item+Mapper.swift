//
//  Item+Mapper.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 15/12/20.
//

import Foundation

extension Item {
    func toItemDetail() -> ItemDetail {
        return ItemDetail(
            name: name,
            updatedAt: updatedAt?.dayMonthYearHourMinute,
            ownerLogin: owner?.login,
            language: language,
            avatarUrl: owner?.avatarUrl,
            createdAt: createdAt?.dayMonthYearHourMinute,
            licenseName: license?.name,
            forks: forks?.string,
            score: score?.string,
            watchers: watchers?.string,
            size: size?.string,
            url: url,
            pushedAt: pushedAt?.dayMonthYearHourMinute)
    }
}
