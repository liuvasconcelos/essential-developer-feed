//
//  SharedTestHelpers.swift
//  EssentialDeveloperFeedTests
//
//  Created by Livia Vasconcelos on 05/06/21.
//

import Foundation
import EssentialDeveloperFeed

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}

func anyData() -> Data {
    return Data("any data".utf8)
}
