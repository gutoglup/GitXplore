//
//  SearchRepositoryInteractorTests.swift
//  GitXploreTests
//
//  Created by Augusto Cesar do Nascimento dos Reis on 17/12/20.
//

import XCTest
import RxSwift
import Moya
@testable import GitXplore

private final class SearchRepositoryPresenterMock: SearchRepositoryPresenting {

    private(set) var onErrorSearchRepositoryCount = 0
    private(set) var listRepositoryCount = 0
    private(set) var listRecentSearchsCount = 0

    func onErrorSearchRepository(title: String, message: String) {
        onErrorSearchRepositoryCount += 1
    }

    func list(repository: Repository, term: String) {
        listRepositoryCount += 1
    }

    func listRecentSearchs(items: [SearchItem]) {
        listRecentSearchsCount += 1
    }
}

private final class RepositoryServiceMock: RepositoryServicing {

    private(set) var searchRepositoryCount = 0
    private var disposeBag = DisposeBag()
    var expetation: XCTestExpectation?

    

    func searchRepository(query: String) -> PrimitiveSequence<SingleTrait, RepositoryResponse> {
        searchRepositoryCount += 1

        let request = MoyaProvider<RepositoryProvider>(stubClosure: MoyaProvider<RepositoryProvider>.immediatelyStub).rx
            .request(.searchRepository(term: "x"))
            .filterSuccessfulStatusCodes()
            .map(RepositoryResponse.self)

        return request
    }
}

private final class SearchRepositoryMock: SearchRepositoring {

    private(set) var addNewSearchItemCount = 0
    private(set) var listItemsCount = 0
    private(set) var searchItemByTitleCount = 0

    var successSearchItem = false

    func add(new searchItem: SearchItem) {
        addNewSearchItemCount += 1
    }

    func listItems() -> [SearchItem]? {
        listItemsCount += 1
        return [SearchItem(title: "X", date: "10-10-2020".date(withFormat: "dd-MM-yyyy")!, repository: Repository(items: [], incompleteResults: false, totalCount: 0))]
    }

    func searchItem(by title: String) -> SearchItem? {
        searchItemByTitleCount += 1
        if successSearchItem == false {
            return nil
        }
        return SearchItem(title: "X", date: "10-10-2020".date(withFormat: "dd-MM-yyyy")!, repository: Repository(items: [], incompleteResults: false, totalCount: 0))
    }
}


final class SearchRepositoryInteractorTests: XCTestCase {

    private let presenter = SearchRepositoryPresenterMock()
    private let service = RepositoryServiceMock()
    private var searchRepository = SearchRepositoryMock()
    private lazy var interactor = SearchRepositoryInteractor(service: service, presenter: presenter, searchRepository: searchRepository)

    func testListRecentSearchs() {
        interactor.listRecentSearchs()
        XCTAssertEqual(presenter.listRecentSearchsCount, 1)
        XCTAssertEqual(searchRepository.listItemsCount, 1)
    }

    func testSearchRepository_whenQueryIsEmpty() {
        interactor.searchRepository(query: "")
        XCTAssertEqual(presenter.onErrorSearchRepositoryCount, 1)
    }

    func testSearchRepository_withLocalCache() {
        searchRepository.successSearchItem = true
        interactor.searchRepository(query: "rx")
        XCTAssertEqual(searchRepository.searchItemByTitleCount, 1)
        XCTAssertEqual(presenter.listRepositoryCount, 1)
    }

}
