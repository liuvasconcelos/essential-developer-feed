//
//  RemoteFeedLoader.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 15/01/21.
//

import Foundation

final class RemoteFeedLoader: FeedLoader {
    let client: HTTPClient
    let url: URL
    
    enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    typealias Result = LoadFeedResult<Error>
    
    init(url: URL,
         client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    func load(completion: @escaping (Result) -> Void) {
        client.get(from: url) { [weak self] result in
            guard self != nil else { return }
            
            switch result {
            case let .success(data, response):
                completion(FeedItemsMapper.map(data, from: response))
            case .failure:
                completion(.failure(.connectivity))
            }
        }
    }
}
