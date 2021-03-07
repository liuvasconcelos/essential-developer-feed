//
//  HTTPClient.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 07/03/21.
//

import Foundation

enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
