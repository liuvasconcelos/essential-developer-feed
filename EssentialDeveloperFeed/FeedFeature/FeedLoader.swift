//
//  FeedLoader.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 13/01/21.
//

import Foundation

enum LoadFeedResult<Error: Swift.Error> {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    associatedtype Error: Swift.Error
    
    func load(completion: @escaping (LoadFeedResult<Error>) -> Void)
}
