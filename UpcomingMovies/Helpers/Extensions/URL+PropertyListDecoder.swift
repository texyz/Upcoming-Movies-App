//
//  URL+PropertyListDecoder.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation

extension URL {

    func decodePropertyList<T: Decodable>() throws -> T {
        let data = try Data(contentsOf: self)
        let decoder = PropertyListDecoder()
        return try decoder.decode(T.self, from: data)
    }

}
