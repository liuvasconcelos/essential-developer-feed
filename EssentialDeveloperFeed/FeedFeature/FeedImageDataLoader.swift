//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Livia Vasconcelos on 24/06/21.
//

import Foundation

public protocol FeedImageDataLoaderTask {
    func cancel()
}

public protocol FeedImageDataLoader {
    typealias Result = Swift.Result<Data, Error>
    
    func loadImageData(from url: URL, completion: @escaping (Result) -> Void) -> FeedImageDataLoaderTask
}
