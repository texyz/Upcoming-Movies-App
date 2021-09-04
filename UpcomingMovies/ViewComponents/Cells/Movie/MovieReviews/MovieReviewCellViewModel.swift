//
//  MovieReviewCellViewModel.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

protocol MovieReviewCellViewModelProtocol {
    
    var authorName: String { get }
    var content: String { get }
    
}

final class MovieReviewCellViewModel: MovieReviewCellViewModelProtocol {
    
    let authorName: String
    let content: String
    
    init(_ review: Review) {
        self.authorName = review.authorName
        self.content = review.content
    }
    
}
