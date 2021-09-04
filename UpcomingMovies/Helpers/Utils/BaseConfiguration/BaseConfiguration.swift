//
//  BaseConfiguration.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

struct BaseConfiguration: Decodable {

    struct Keys: Decodable {

        let readAccessToken: String
        let apiKey: String

        private enum CodingKeys: String, CodingKey {
            case readAccessToken = "ReadAccessToken"
            case apiKey = "ApiKey"
        }

    }

    let keys: Keys

    private enum CodingKeys: String, CodingKey {
        case keys = "TheMovieDb"
    }

}
