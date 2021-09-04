//
//  ConfigurationHandlerProtocol.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UpcomingMoviesDomain

protocol ConfigurationHandlerProtocol {

    var regularImageBaseURLString: String { get }
    var backdropImageBaseURLString: String { get }

    func setConfiguration(_ configuration: Configuration)

}
