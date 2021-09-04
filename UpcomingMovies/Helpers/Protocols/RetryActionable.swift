//
//  RetryActionable.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

protocol RetryActionable {

    var retry: (() -> Void)? { get set }
    
    func resetState()

}
