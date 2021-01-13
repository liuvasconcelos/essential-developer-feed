//
//  FeedLoader.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 13/01/21.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}
protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
