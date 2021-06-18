//
//  CoreDataFeedStore.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 18/06/21.
//

import CoreData

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

private class ManagedCache: NSManagedObject {
    @NSManaged var timestamp: Date
    @NSManaged var feed: NSOrderedSet
}

private class ManagedFeedImage: NSManagedObject {
    @NSManaged var id: UUID
    @NSManaged var imageDescription: String?
    @NSManaged var location: String?
    @NSManaged var url: URL
    @NSManaged var cache: ManagedCache
}
