//
//  Utils.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

func degreesToRadians (_ value: CGFloat) -> CGFloat {
    let piDegrees: CGFloat = 180.0
    return (value * CGFloat.pi) / piDegrees
}

func radiansToDegrees (_ value: CGFloat) -> CGFloat {
    let piDegrees: CGFloat = 180.0
    return (value * piDegrees) / CGFloat.pi
}
