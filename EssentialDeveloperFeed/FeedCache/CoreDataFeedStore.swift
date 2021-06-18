//
//  CoreDataFeedStore.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 18/06/21.
//

import Foundation

final class CoreDataFeedStore: FeedStore {
    public init() {}
    
    func retrieve(completion: @escaping RetrievalCompletion) {
        completion(.empty)
    }
    
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {
        
    }

    func deleteCacheFeed(completion: @escaping DeletionCompletion) {
        
    }

}
