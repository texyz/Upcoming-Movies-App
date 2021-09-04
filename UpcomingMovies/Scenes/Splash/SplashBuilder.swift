//
//  SplashBuilder.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

final class SplashBuilder {
    
    class func buildViewController() -> UIViewController {
        let viewController = SplashViewController.instantiate()
        viewController.viewModel = DIContainer.shared.resolve()
        
        let navigationController = UINavigationController(rootViewController: viewController)
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [navigationController]
        
        return tabBarController
    }
    
}
