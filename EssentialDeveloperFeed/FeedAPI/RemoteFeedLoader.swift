//
//  RemoteFeedLoader.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 15/01/21.
//

import Foundation

protocol HTTPClient {
    func get(from url: URL, completion: @escaping (Error?, HTTPURLResponse?) -> Void)
}

final class RemoteFeedLoader {
    let client: HTTPClient
    let url: URL
    
    enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    init(url: URL,
         client: HTTPClient) {
        self.url = url
        self.client = client
    }
    func load(completion: @escaping (Error) -> Void) {
        client.get(from: url) { error, response in
            if response != nil {
                completion(.invalidData)
            } else {
                completion(.connectivity)
            }
        }
    }
}
