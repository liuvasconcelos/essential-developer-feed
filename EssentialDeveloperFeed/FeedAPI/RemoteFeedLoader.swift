//
//  RemoteFeedLoader.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 15/01/21.
//

import Foundation

protocol HTTPClient {
    func get(from url: URL, completion: @escaping (Error) -> Void)
}

final class RemoteFeedLoader {
    let client: HTTPClient
    let url: URL
    
    enum Error: Swift.Error {
        case connectivity
    }
    
    init(url: URL,
         client: HTTPClient) {
        self.url = url
        self.client = client
    }
    func load(completion: @escaping (Error) -> Void = { _ in}) {
        client.get(from: url) { error in
            completion(.connectivity)
        }
    }
}
