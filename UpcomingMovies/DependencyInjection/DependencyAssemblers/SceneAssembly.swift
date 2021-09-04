//
//  SceneAssembly.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import Swinject

final class SceneAssembly: Assembly {
    
    func assemble(container: Container) {
        let assemblies: [Assembly] = [
            SplashAssembly(),
            AccountAssembly(),
            AuthenticationAssembly(),
            ProfileAssembly(),
            SavedMoviesAssembly(),
            CustomListsAssembly(),
            CustomListDetailAssembly(),
            UpcomingMoviesAssembly(),
            MovieDetailAssembly(),
            SearchMoviesAssembly(),
            MovieListAssembly(),
            MovieCreditsAssembly(),
            MovieVideosAssembly(),
            MovieReviewsAssembly(),
            MovieReviewDetailAssembly()
        ]
        assemblies.forEach { $0.assemble(container: container) }
    }
    
}
