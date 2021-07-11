//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Livia Vasconcelos on 26/06/21.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
