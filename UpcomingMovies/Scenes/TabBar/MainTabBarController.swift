//
//  MainTabBarController.swift
//  UpcomingMovies
//
// Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private var currentSelectedItemIndex: Int!
    private var coordinators: [Coordinator]!

    // MARK: - Initializers

    init(coordinators: [Coordinator]) {
        self.coordinators = coordinators
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        viewControllers = coordinators.map { $0.navigationController }
    }

    // MARK: - Internal

    func setSelectedIndex(_ index: Int) {
        selectedIndex = index
        currentSelectedItemIndex = selectedIndex
    }

}

// MARK: - UITabBarControllerDelegate

extension MainTabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        guard let currentTabBarIndex = viewControllers?.firstIndex(of: viewController),
            currentTabBarIndex == selectedIndex,
            selectedIndex == currentSelectedItemIndex else {
                currentSelectedItemIndex = selectedIndex
                return
        }
        guard let navigationController = viewController as? UINavigationController,
            let tabBarScrollable = navigationController.topViewController as? TabBarScrollable else { return }
        tabBarScrollable.handleTabBarSelection()
    }
    
}
