//
//  AppGroup.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

enum AppGroup: String, CaseIterable {

    case movies = "group.movies.extension"

    static var allCasesIdentifiers: [String] {
        return AppGroup.allCases.map { $0.rawValue }
    }

}
