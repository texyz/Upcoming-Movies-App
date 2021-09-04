//
//  CustomListsProtocols.swift
//  UpcomingMovies
//
// Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain

protocol CustomListsViewModelProtocol {
    
    var startLoading: Bindable<Bool> { get }
    var viewState: Bindable<SimpleViewState<List>> { get }
    
    var lists: [List] { get }
    var listCells: [CustomListCellViewModelProtocol] { get }
    
    func list(at index: Int) -> List
    
    func getCustomLists()
    func refreshCustomLists()
    
}

protocol CustomListsInteractorProtocol {
    
    func getCustomLists(page: Int?, completion: @escaping (Result<[List], Error>) -> Void)
    
}

protocol CustomListsCoordinatorProtocol: Coordinator {
 
    func showListDetail(for customList: List)
    
}
