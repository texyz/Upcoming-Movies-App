//
//  DataSourceAssembly.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation
import UpcomingMoviesData
import CoreDataInfrastructure
import NetworkInfrastructure
import Swinject

final class DataSourceAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(LocalDataSourceProtocol.self) { _ in
            return LocalDataSource(appGroupExtensions: AppGroup.allCasesIdentifiers)
        }
        container.register(RemoteDataSourceProtocol.self) { _ in
            return RemoteDataSource()
        }
    }
    
}
