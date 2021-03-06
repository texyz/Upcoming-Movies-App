//
//  UpcomingMoviesProtocols.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit
import UpcomingMoviesDomain

protocol UpcomingMoviesViewModelProtocol {
    
    var viewState: Bindable<SimpleViewState<Movie>> { get }
    var startLoading: Bindable<Bool> { get }
    
    var movieCells: [UpcomingMovieCellViewModelProtocol] { get }
    var needsPrefetch: Bool { get }
    
    func getMovies()
    func refreshMovies()
    
    func movie(for index: Int) -> Movie
    
}

protocol UpcomingMoviesCoordinatorProtocol: AnyObject {
    
    func showMovieDetail(for movie: Movie, with navigationConfiguration: NavigationConfiguration?)
    
}

protocol UpcomingMoviesNavigationDelegate: UINavigationControllerDelegate {
    
    var parentCoordinator: Coordinator? { get set }
    
    func configure(selectedFrame: CGRect?, with imageToTransition: UIImage?)
    func updateOffset(_ verticalSafeAreaOffset: CGFloat)
    
}
