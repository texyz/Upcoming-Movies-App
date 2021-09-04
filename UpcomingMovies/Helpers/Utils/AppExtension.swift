//
//  AppExtension.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation

struct AppExtension {

    static let scheme = "extension"

    enum Host: String {

        case upcomingMovies = "upcoming"
        case searchMovies = "search"

    }

    static func url(for host: AppExtension.Host) -> URL? {
        let urlString = scheme + "://" + host.rawValue
        return URL(string: urlString)
    }

}
