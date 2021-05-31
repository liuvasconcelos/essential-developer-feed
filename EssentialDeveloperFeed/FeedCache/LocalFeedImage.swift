//
//  LocalFeedImage.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 31/05/21.
//

import Foundation

struct LocalFeedImage: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let url: URL
}
