//
//  CacheFeedUseCaseTests.swift
//  EssentialDeveloperFeedTests
//
//  Created by Livia Vasconcelos on 24/05/21.
//

import XCTest

class LocalFeedLoader {
    init(store: FeedStore) {
        
    }
}

class FeedStore {
    var deleteCahedFeedCallCount = 0
}

class CacheFeedUseCaseTests: XCTestCase {
    
    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCahedFeedCallCount, 0)
    }
}
