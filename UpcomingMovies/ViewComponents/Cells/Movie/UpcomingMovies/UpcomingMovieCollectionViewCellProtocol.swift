//
//  UpcomingMovieCollectionViewCellProtocol.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

protocol UpcomingMovieCollectionViewCellProtocol {
    
    var posterImageView: UIImageView! { get set }
    var viewModel: UpcomingMovieCellViewModelProtocol? { get set }
    
}
