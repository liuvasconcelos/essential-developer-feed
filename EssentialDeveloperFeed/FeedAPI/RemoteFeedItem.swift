//
//  RemoteFeedItem.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 31/05/21.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
