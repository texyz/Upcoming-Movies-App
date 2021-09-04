//
//  MovieSearchController.swift
//  UpcomingMovies
//
// Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

class DefaultSearchController: UISearchController {

    override init(searchResultsController: UIViewController?) {
        super.init(searchResultsController: searchResultsController)
        hidesNavigationBarDuringPresentation = false
        searchBar.searchBarStyle = UISearchBar.Style.minimal
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}
