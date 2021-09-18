//
//  FeedErrorViewModel.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 12/09/21.
//

import Foundation

public struct FeedErrorViewModel {
    public let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
