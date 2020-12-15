//
//  ItemResponse+Mapper.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import Foundation

extension ItemResponse {

    func toDomain() -> Item {
        let owner = self.owner?.toDomain()
        let license = self.license?.toDomain()

        let createdAt = self.createdAt?.dateIso8601
        let updatedAt = self.updatedAt?.dateIso8601
        let pushedAt = self.pushedAt?.dateIso8601

        return Item(
            hooksUrl: hooksUrl,
            issueEventsUrl: issueEventsUrl,
            languagesUrl: languagesUrl,
            gitCommitsUrl: gitCommitsUrl,
            createdAt: createdAt,
            htmlUrl: htmlUrl,
            notificationsUrl: notificationsUrl,
            branchesUrl: branchesUrl,
            issueCommentUrl: issueCommentUrl,
            license: license,
            forksCount: forksCount,
            cloneUrl: cloneUrl,
            forks: forks,
            gitTagsUrl: gitTagsUrl,
            releasesUrl: releasesUrl,
            commitsUrl: commitsUrl,
            defaultBranch: defaultBranch,
            openIssues: openIssues,
            id: id,
            language: language,
            mergesUrl: mergesUrl,
            commentsUrl: commentsUrl,
            teamsUrl: teamsUrl,
            hasIssues: hasIssues,
            labelsUrl: labelsUrl,
            owner: owner,
            issuesUrl: issuesUrl,
            pullsUrl: pullsUrl,
            milestonesUrl: milestonesUrl,
            keysUrl: keysUrl,
            hasPages: hasPages,
            fullName: fullName,
            compareUrl: compareUrl,
            hasWiki: hasWiki,
            watchers: watchers,
            stargazersUrl: stargazersUrl,
            score: score,
            homepage: homepage,
            contributorsUrl: contributorsUrl,
            downloadsUrl: downloadsUrl,
            sshUrl: sshUrl,
            gitUrl: gitUrl,
            svnUrl: svnUrl,
            statusesUrl: statusesUrl,
            assigneesUrl: assigneesUrl,
            archiveUrl: archiveUrl,
            name: name,
            subscribersUrl: subscribersUrl,
            forksUrl: forksUrl,
            isPrivate: isPrivate,
            openIssuesCount: openIssuesCount,
            gitRefsUrl: gitRefsUrl,
            hasDownloads: hasDownloads,
            disabled: disabled,
            descriptionValue: descriptionValue,
            eventsUrl: eventsUrl,
            size: size,
            fork: fork,
            blobsUrl: blobsUrl,
            stargazersCount: stargazersCount,
            watchersCount: watchersCount,
            contentsUrl: contentsUrl,
            hasProjects: hasProjects,
            url: url,
            collaboratorsUrl: collaboratorsUrl,
            nodeId: nodeId,
            subscriptionUrl: subscribersUrl,
            updatedAt: updatedAt,
            deploymentsUrl: deploymentsUrl,
            pushedAt: pushedAt,
            archived: archived,
            treesUrl: treesUrl,
            tagsUrl: tagsUrl)
    }
}
