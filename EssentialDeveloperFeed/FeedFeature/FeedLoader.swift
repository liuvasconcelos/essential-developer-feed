//
//  FeedLoader.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 13/01/21.
//

import Foundation

typealias LoadFeedResult = Result<[FeedImage], Error>

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
