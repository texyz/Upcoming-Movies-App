//
//  SplashProtocols.swift
//  UpcomingMovies
//
// Created by Rotimi Joshua on 10/04/2021.
//

import UpcomingMoviesDomain

protocol SplashViewModelProtocol {
    
    var initialDownloadsEnded: (() -> Void)? { get set }
    
    func startInitialDownloads()
    
}

protocol SplashInteractorProtocol {
    
    func getAppConfiguration(completion: @escaping (Result<Configuration, Error>) -> Void)
    func getAllGenres(completion: @escaping (Result<[Genre], Error>) -> Void)
    
}
