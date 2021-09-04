//
//  String+Localized.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import Foundation

extension String {
    
    func localized(bundle: Bundle = .main, tableName: String = "Localizable") -> String {
        return NSLocalizedString(self,
                                 tableName: tableName,
                                 bundle: bundle,
                                 value: self,
                                 comment: "")
    }
    
}
