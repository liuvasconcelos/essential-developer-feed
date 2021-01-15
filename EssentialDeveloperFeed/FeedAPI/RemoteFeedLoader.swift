//
//  RemoteFeedLoader.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 15/01/21.
//

import Foundation

protocol HTTPClient {
    func get(from url: URL)
}

final class RemoteFeedLoader {
    let client: HTTPClient
    let url: URL
    
    init(url: URL,
         client: HTTPClient) {
        self.url = url
        self.client = client
    }
    func load() {
        client.get(from: url)
    }
}
