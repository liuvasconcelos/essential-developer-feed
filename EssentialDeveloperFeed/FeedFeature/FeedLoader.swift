//
//  FeedLoader.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 13/01/21.
//

import Foundation

protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
