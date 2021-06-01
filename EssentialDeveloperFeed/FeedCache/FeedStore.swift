//
//  FeedStore.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 31/05/21.
//

import Foundation

protocol FeedStore {
    typealias DeletionCompletion = (Error?) -> Void
    typealias InsertionCompletion = (Error?) -> Void
    
    func deleteCacheFeed(completion: @escaping DeletionCompletion)
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion)
    func retrieve()
}
