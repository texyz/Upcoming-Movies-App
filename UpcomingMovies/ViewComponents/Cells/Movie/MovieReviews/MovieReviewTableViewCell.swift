//
//  MovieReviewTableViewCell.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

final class MovieReviewTableViewCell: UITableViewCell {

    @IBOutlet weak var authorNameLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    var viewModel: MovieReviewCellViewModelProtocol? {
        didSet {
            setupBindables()
        }
    }
    
    // MARK: - Lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    private func setupUI() {
        setupLabels()
    }
    
    private func setupLabels() {
        authorNameLabel.font = FontHelper.semiBold(withSize: 16.0)
        contentLabel.font = FontHelper.light(withSize: 15.0)
    }
    
    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        authorNameLabel.text = viewModel?.authorName
        contentLabel.text = viewModel?.content
    }

}
