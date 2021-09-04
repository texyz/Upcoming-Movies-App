//
//  NavigationHandlerProtocol.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

protocol NavigationHandlerProtocol {

    func initialTransition(from window: UIWindow?)

    func handleUrlOpeningNavigation(for url: URL?, and window: UIWindow?)
    func handleShortcutItem(_ shortcutItem: UIApplicationShortcutItem, and window: UIWindow?)

}
