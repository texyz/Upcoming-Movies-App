//
//  MovieReviewDetailViewModel.swift
//  UpcomingMovies
//
// Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

struct MovieReviewDetailViewModel: MovieReviewDetailViewModelProtocol {
    
    let author: String
    let content: String
    
    init(review: Review) {
        self.author = review.authorName
        self.content = review.content
    }
    
}
