//
//  ProviderAssembly.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesDomain
import UpcomingMoviesData
import CoreDataInfrastructure
import NetworkInfrastructure
import Swinject

final class ProviderAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(UseCaseProviderProtocol.self) { resolver in
            UseCaseProvider(localDataSource: resolver.resolve(LocalDataSourceProtocol.self)!,
                            remoteDataSource: resolver.resolve(RemoteDataSourceProtocol.self)!)
        }
    }
    
}
