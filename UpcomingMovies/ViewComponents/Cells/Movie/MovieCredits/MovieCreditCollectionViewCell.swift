//
//  MovieCreditCollectionViewCell.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

final class MovieCreditCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var overlayView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    var viewModel: MovieCreditCellViewModelProtocol? {
        didSet {
            setupBindables()
        }
    }
    
    override var isSelected: Bool {
        didSet {
            guard oldValue != isSelected else { return }
            if isSelected && !profileImageView.isEmpty {
                overlayView.fadeOut(Constants.fadeAnimationDuration)
            } else {
                overlayView.fadeIn(Constants.fadeAnimationDuration, to: 0.6)
            }
        }
    }
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        profileImageView.cancelImageDownload()
        profileImageView.image = nil
    }
    
    // MARK: - Private
    
    private func setupUI() {
        isAccessibilityElement = true
        
        nameLabel.font = FontHelper.bold(withSize: 15.0)
        nameLabel.textColor = .white
        
        subtitleLabel.font = FontHelper.regular(withSize: 13.0)
        subtitleLabel.textColor = .white
    }
    
    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        guard let viewModel = viewModel else { return }
        
        let creditLabelFormat = LocalizedStrings.movieCreditAccessibility()
        accessibilityLabel = String(format: creditLabelFormat, viewModel.name, viewModel.role)
        
        profileImageView.setImage(with: viewModel.profileURL)
        nameLabel.text = viewModel.name
        subtitleLabel.text = viewModel.role
    }
    
}

struct Constants {
    static let fadeAnimationDuration: Double = 0.25
}
