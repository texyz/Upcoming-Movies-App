//
//  EmptyPlaceholderView.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

class EmptyPlaceholderView: UIView, NibLoadable, Placeholderable {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    var isPresented: Bool = false
    
    var detailText: String? {
        didSet {
            guard let detailText = detailText else { return }
            messageLabel.text = detailText
        }
    }
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private
    
    private func setupUI() {
        imageView.image = #imageLiteral(resourceName: "EmptyPlaceholder")
        messageLabel.font = FontHelper.regular(withSize: 18.0)
        messageLabel.textColor = ColorPalette.lightBlueColor
    }

}
