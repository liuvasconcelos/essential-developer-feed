//
//  RemoteFeedLoader.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 15/01/21.
//

import Foundation

enum HTTPClientResult {
    case success(HTTPURLResponse)
    case failure(Error)
}

protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
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
        client.get(from: url) { result in
            switch result {
            case .success:
                completion(.invalidData)
            case .failure:
                completion(.connectivity)
            }
        }
    }
}
