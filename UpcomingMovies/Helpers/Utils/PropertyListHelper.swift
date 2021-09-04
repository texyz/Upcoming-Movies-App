//
//  PropertyListHelper.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation

struct PropertyListHelper {

    /**
     Decodes a property list to a specific type.

     - Parameters:
        - resourceName: Name of the property list to be decoded.

     - Returns: The already decoded type.
     */
    static func decode<T: Decodable>(resourceName: String = "Info") -> T {
        guard let url = Bundle.main.url(forResource: resourceName, withExtension: ".plist") else {
            fatalError()
        }
        do {
            let baseParameters: T = try url.decodePropertyList()
            return baseParameters
        } catch {
            fatalError()
        }
    }

}
