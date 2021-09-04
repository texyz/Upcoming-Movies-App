//
//  SplashViewController.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

class SplashViewController: UIViewController, Storyboarded {
    
    static var storyboardName: String = "Main"
    
    var viewModel: SplashViewModelProtocol?

    // MARK: - Lifecycle
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // We can only get the window and scene of this view controller
        // only after it has been added to the window hierarchy
        setupBindables()
        viewModel?.startInitialDownloads()
    }

    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        viewModel?.initialDownloadsEnded = { [weak self] in
            guard let strongSelf = self else { return }
            let navigationHandler: NavigationHandlerProtocol = DIContainer.shared.resolve()
            navigationHandler.initialTransition(from: strongSelf.view.window)
        }
    }

}
