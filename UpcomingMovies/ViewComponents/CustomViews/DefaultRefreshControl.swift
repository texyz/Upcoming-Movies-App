//
//  DefaultRefreshControl.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

class DefaultRefreshControl: UIRefreshControl {
    
    private var refreshHandler: () -> Void
    
    // MARK: - Initializers

    init(tintColor: UIColor = ColorPalette.lightBlueColor,
         attributedTitle: String = "",
         backgroundColor: UIColor? = .clear,
         refreshHandler: @escaping () -> Void) {
        self.refreshHandler = refreshHandler
        super.init()
        self.tintColor = tintColor
        self.backgroundColor = backgroundColor
        self.attributedTitle = NSAttributedString(string: attributedTitle,
                                                  attributes: [NSAttributedString.Key.font: FontHelper.light(withSize: 12.0),
                                                               NSAttributedString.Key.foregroundColor: tintColor])
        addTarget(self, action: #selector(refreshControlAction), for: .valueChanged)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Selectors
    
    @objc func refreshControlAction() {
        refreshHandler()
    }
    
}
