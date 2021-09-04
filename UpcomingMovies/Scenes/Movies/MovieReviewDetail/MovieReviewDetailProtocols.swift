//
//  MovieReviewDetailProtocols.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation

protocol MovieReviewDetailViewModelProtocol {
    
    var author: String { get }
    var content: String { get }
    
}

protocol MovieReviewDetailCoordinatorProtocol: AnyObject {
    
    func dismiss()
    
}
