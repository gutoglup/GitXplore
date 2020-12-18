//
//  SearchRepository.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 16/12/20.
//

import Foundation

protocol SearchRepositoring {
    func add(new searchItem: SearchItem)
    func listItems() -> [SearchItem]?
    func searchItem(by title: String) -> SearchItem?
}

final class SearchRepository {
    var userDefaults = UserDefaults.standard
    let searchItemsKey = "search_items"
}

extension SearchRepository: SearchRepositoring {

    func add(new searchItem: SearchItem) {
        var items = listItems() ?? [SearchItem]()
        items.append(searchItem)
        let encoder = JSONEncoder()
        guard let data = try? encoder.encode(items) else { return }
        userDefaults.set(data, forKey: searchItemsKey)
    }

    func listItems() -> [SearchItem]? {
        guard let searchItemsData = userDefaults.data(forKey: searchItemsKey) else { return nil }
        let decoder = JSONDecoder()
        guard let searchItems = try? decoder.decode([SearchItem].self, from: searchItemsData) else { return nil }
        return searchItems
    }

    func searchItem(by title: String) -> SearchItem? {
        return listItems()?.first(where: {$0.title == title})
    }
}
