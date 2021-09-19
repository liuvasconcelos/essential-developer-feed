//
//  HTTPURLResponse+StatusCode.swift
//  EssentialDeveloperFeed
//
//  Created by Livia Vasconcelos on 19/09/21.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }

    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
