//
//  ItemsResponse.swift
//
//  Created by Augusto Cesar do Nascimento dos Reis on 13/12/20
//  Copyright (c) ACNR. All rights reserved.
//

import Foundation

struct ItemsResponse: Decodable {

  enum CodingKeys: String, CodingKey {
    case hooksUrl = "hooks_url"
    case issueEventsUrl = "issue_events_url"
    case languagesUrl = "languages_url"
    case gitCommitsUrl = "git_commits_url"
    case createdAt = "created_at"
    case htmlUrl = "html_url"
    case notificationsUrl = "notifications_url"
    case branchesUrl = "branches_url"
    case issueCommentUrl = "issue_comment_url"
    case license
    case forksCount = "forks_count"
    case cloneUrl = "clone_url"
    case forks
    case gitTagsUrl = "git_tags_url"
    case releasesUrl = "releases_url"
    case commitsUrl = "commits_url"
    case defaultBranch = "default_branch"
    case openIssues = "open_issues"
    case id
    case language
    case mergesUrl = "merges_url"
    case commentsUrl = "comments_url"
    case teamsUrl = "teams_url"
    case hasIssues = "has_issues"
    case labelsUrl = "labels_url"
    case owner
    case issuesUrl = "issues_url"
    case pullsUrl = "pulls_url"
    case milestonesUrl = "milestones_url"
    case keysUrl = "keys_url"
    case hasPages = "has_pages"
    case fullName = "full_name"
    case compareUrl = "compare_url"
    case hasWiki = "has_wiki"
    case watchers
    case stargazersUrl = "stargazers_url"
    case score
    case homepage
    case contributorsUrl = "contributors_url"
    case downloadsUrl = "downloads_url"
    case sshUrl = "ssh_url"
    case gitUrl = "git_url"
    case svnUrl = "svn_url"
    case statusesUrl = "statuses_url"
    case assigneesUrl = "assignees_url"
    case archiveUrl = "archive_url"
    case name
    case subscribersUrl = "subscribers_url"
    case forksUrl = "forks_url"
    case isPrivate = "private"
    case openIssuesCount = "open_issues_count"
    case gitRefsUrl = "git_refs_url"
    case hasDownloads = "has_downloads"
    case disabled
    case descriptionValue = "description"
    case eventsUrl = "events_url"
    case size
    case fork
    case blobsUrl = "blobs_url"
    case stargazersCount = "stargazers_count"
    case watchersCount = "watchers_count"
    case contentsUrl = "contents_url"
    case hasProjects = "has_projects"
    case url
    case collaboratorsUrl = "collaborators_url"
    case nodeId = "node_id"
    case subscriptionUrl = "subscription_url"
    case updatedAt = "updated_at"
    case deploymentsUrl = "deployments_url"
    case pushedAt = "pushed_at"
    case archived
    case treesUrl = "trees_url"
    case tagsUrl = "tags_url"
  }

  let hooksUrl: String?
  let issueEventsUrl: String?
  let languagesUrl: String?
  let gitCommitsUrl: String?
  let createdAt: String?
  let htmlUrl: String?
  let notificationsUrl: String?
  let branchesUrl: String?
  let issueCommentUrl: String?
  let license: LicenseResponse?
  let forksCount: Int?
  let cloneUrl: String?
  let forks: Int?
  let gitTagsUrl: String?
  let releasesUrl: String?
  let commitsUrl: String?
  let defaultBranch: String?
  let openIssues: Int?
  let id: Int?
  let language: String?
  let mergesUrl: String?
  let commentsUrl: String?
  let teamsUrl: String?
  let hasIssues: Bool?
  let labelsUrl: String?
  let owner: OwnerResponse?
  let issuesUrl: String?
  let pullsUrl: String?
  let milestonesUrl: String?
  let keysUrl: String?
  let hasPages: Bool?
  let fullName: String?
  let compareUrl: String?
  let hasWiki: Bool?
  let watchers: Int?
  let stargazersUrl: String?
  let score: Int?
  let homepage: String?
  let contributorsUrl: String?
  let downloadsUrl: String?
  let sshUrl: String?
  let gitUrl: String?
  let svnUrl: String?
  let statusesUrl: String?
  let assigneesUrl: String?
  let archiveUrl: String?
  let name: String?
  let subscribersUrl: String?
  let forksUrl: String?
  let isPrivate: Bool?
  let openIssuesCount: Int?
  let gitRefsUrl: String?
  let hasDownloads: Bool?
  let disabled: Bool?
  let descriptionValue: String?
  let eventsUrl: String?
  let size: Int?
  let fork: Bool?
  let blobsUrl: String?
  let stargazersCount: Int?
  let watchersCount: Int?
  let contentsUrl: String?
  let hasProjects: Bool?
  let url: String?
  let collaboratorsUrl: String?
  let nodeId: String?
  let subscriptionUrl: String?
  let updatedAt: String?
  let deploymentsUrl: String?
  let pushedAt: String?
  let archived: Bool?
  let treesUrl: String?
  let tagsUrl: String?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    hooksUrl = try container.decodeIfPresent(String.self, forKey: .hooksUrl)
    issueEventsUrl = try container.decodeIfPresent(String.self, forKey: .issueEventsUrl)
    languagesUrl = try container.decodeIfPresent(String.self, forKey: .languagesUrl)
    gitCommitsUrl = try container.decodeIfPresent(String.self, forKey: .gitCommitsUrl)
    createdAt = try container.decodeIfPresent(String.self, forKey: .createdAt)
    htmlUrl = try container.decodeIfPresent(String.self, forKey: .htmlUrl)
    notificationsUrl = try container.decodeIfPresent(String.self, forKey: .notificationsUrl)
    branchesUrl = try container.decodeIfPresent(String.self, forKey: .branchesUrl)
    issueCommentUrl = try container.decodeIfPresent(String.self, forKey: .issueCommentUrl)
    license = try container.decodeIfPresent(LicenseResponse.self, forKey: .license)
    forksCount = try container.decodeIfPresent(Int.self, forKey: .forksCount)
    cloneUrl = try container.decodeIfPresent(String.self, forKey: .cloneUrl)
    forks = try container.decodeIfPresent(Int.self, forKey: .forks)
    gitTagsUrl = try container.decodeIfPresent(String.self, forKey: .gitTagsUrl)
    releasesUrl = try container.decodeIfPresent(String.self, forKey: .releasesUrl)
    commitsUrl = try container.decodeIfPresent(String.self, forKey: .commitsUrl)
    defaultBranch = try container.decodeIfPresent(String.self, forKey: .defaultBranch)
    openIssues = try container.decodeIfPresent(Int.self, forKey: .openIssues)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
    language = try container.decodeIfPresent(String.self, forKey: .language)
    mergesUrl = try container.decodeIfPresent(String.self, forKey: .mergesUrl)
    commentsUrl = try container.decodeIfPresent(String.self, forKey: .commentsUrl)
    teamsUrl = try container.decodeIfPresent(String.self, forKey: .teamsUrl)
    hasIssues = try container.decodeIfPresent(Bool.self, forKey: .hasIssues)
    labelsUrl = try container.decodeIfPresent(String.self, forKey: .labelsUrl)
    owner = try container.decodeIfPresent(OwnerResponse.self, forKey: .owner)
    issuesUrl = try container.decodeIfPresent(String.self, forKey: .issuesUrl)
    pullsUrl = try container.decodeIfPresent(String.self, forKey: .pullsUrl)
    milestonesUrl = try container.decodeIfPresent(String.self, forKey: .milestonesUrl)
    keysUrl = try container.decodeIfPresent(String.self, forKey: .keysUrl)
    hasPages = try container.decodeIfPresent(Bool.self, forKey: .hasPages)
    fullName = try container.decodeIfPresent(String.self, forKey: .fullName)
    compareUrl = try container.decodeIfPresent(String.self, forKey: .compareUrl)
    hasWiki = try container.decodeIfPresent(Bool.self, forKey: .hasWiki)
    watchers = try container.decodeIfPresent(Int.self, forKey: .watchers)
    stargazersUrl = try container.decodeIfPresent(String.self, forKey: .stargazersUrl)
    score = try container.decodeIfPresent(Int.self, forKey: .score)
    homepage = try container.decodeIfPresent(String.self, forKey: .homepage)
    contributorsUrl = try container.decodeIfPresent(String.self, forKey: .contributorsUrl)
    downloadsUrl = try container.decodeIfPresent(String.self, forKey: .downloadsUrl)
    sshUrl = try container.decodeIfPresent(String.self, forKey: .sshUrl)
    gitUrl = try container.decodeIfPresent(String.self, forKey: .gitUrl)
    svnUrl = try container.decodeIfPresent(String.self, forKey: .svnUrl)
    statusesUrl = try container.decodeIfPresent(String.self, forKey: .statusesUrl)
    assigneesUrl = try container.decodeIfPresent(String.self, forKey: .assigneesUrl)
    archiveUrl = try container.decodeIfPresent(String.self, forKey: .archiveUrl)
    name = try container.decodeIfPresent(String.self, forKey: .name)
    subscribersUrl = try container.decodeIfPresent(String.self, forKey: .subscribersUrl)
    forksUrl = try container.decodeIfPresent(String.self, forKey: .forksUrl)
    isPrivate = try container.decodeIfPresent(Bool.self, forKey: .isPrivate)
    openIssuesCount = try container.decodeIfPresent(Int.self, forKey: .openIssuesCount)
    gitRefsUrl = try container.decodeIfPresent(String.self, forKey: .gitRefsUrl)
    hasDownloads = try container.decodeIfPresent(Bool.self, forKey: .hasDownloads)
    disabled = try container.decodeIfPresent(Bool.self, forKey: .disabled)
    descriptionValue = try container.decodeIfPresent(String.self, forKey: .descriptionValue)
    eventsUrl = try container.decodeIfPresent(String.self, forKey: .eventsUrl)
    size = try container.decodeIfPresent(Int.self, forKey: .size)
    fork = try container.decodeIfPresent(Bool.self, forKey: .fork)
    blobsUrl = try container.decodeIfPresent(String.self, forKey: .blobsUrl)
    stargazersCount = try container.decodeIfPresent(Int.self, forKey: .stargazersCount)
    watchersCount = try container.decodeIfPresent(Int.self, forKey: .watchersCount)
    contentsUrl = try container.decodeIfPresent(String.self, forKey: .contentsUrl)
    hasProjects = try container.decodeIfPresent(Bool.self, forKey: .hasProjects)
    url = try container.decodeIfPresent(String.self, forKey: .url)
    collaboratorsUrl = try container.decodeIfPresent(String.self, forKey: .collaboratorsUrl)
    nodeId = try container.decodeIfPresent(String.self, forKey: .nodeId)
    subscriptionUrl = try container.decodeIfPresent(String.self, forKey: .subscriptionUrl)
    updatedAt = try container.decodeIfPresent(String.self, forKey: .updatedAt)
    deploymentsUrl = try container.decodeIfPresent(String.self, forKey: .deploymentsUrl)
    pushedAt = try container.decodeIfPresent(String.self, forKey: .pushedAt)
    archived = try container.decodeIfPresent(Bool.self, forKey: .archived)
    treesUrl = try container.decodeIfPresent(String.self, forKey: .treesUrl)
    tagsUrl = try container.decodeIfPresent(String.self, forKey: .tagsUrl)
  }

}
