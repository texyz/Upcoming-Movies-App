//
//  MovieTableViewCell.swift
//  UpcomingMovies
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import UIKit

final class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieContainerView: UIView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var voteAverageView: VoteAverageView!
    
    var viewModel: MovieCellViewModelProtocol? {
        didSet {
            setupBindables()
        }
    }
    
    // MARK: - Lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()
        posterImageView.layer.shouldRasterize = true
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        posterImageView.cancelImageDownload()
        posterImageView.image = nil
    }
    
    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        guard let viewModel = viewModel else { return }
        nameLabel.text = viewModel.name
        genreLabel.text = viewModel.genreName
        releaseDateLabel.text = viewModel.releaseDate
        posterImageView.setImage(with: viewModel.posterURL)
        voteAverageView.voteValue = viewModel.voteAverage
    }

}
