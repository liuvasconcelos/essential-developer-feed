//
//  RemoteFeedItem.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 31/05/21.
//

import Foundation

 struct RemoteFeedItem: Decodable {
     let id: UUID
     let description: String?
     let location: String?
     let image: URL
}
