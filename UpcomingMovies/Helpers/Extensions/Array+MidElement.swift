//
//  Array+MidElement.swift
//  UpcomingMovies
//
// Created by Rotimi Joshua on 10/04/2021.
//

extension Array {
    
    var mid: Element? {
        guard count != 0 else { return nil }

        let midIndex = (count > 1 ? count - 1 : count) / 2
        return self[midIndex]
    }
    
}
