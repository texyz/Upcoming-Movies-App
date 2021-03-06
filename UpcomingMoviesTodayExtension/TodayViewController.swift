//
//  TodayViewController.swift
//  UpcomingMoviesTodayExtension
//
// Created by Rotimi Joshua on 10/04/2021.
//

import UIKit
import NotificationCenter
import CoreDataInfrastructure
@objc(TodayViewController)
class TodayViewController: UIViewController, NCWidgetProviding {
    
    private let todayView: TodayView = TodayView()
    
    // MARK: - Lifecycle
    
    override func loadView() {
        view = todayView
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    // MARK: - NCWidgetProviding
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        completionHandler(NCUpdateResult.newData)
    }
    
    // MARK: - Private
    
    private func configureUI() {
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(openHostApp))
        todayView.addGestureRecognizer(tapGesture)
        configureMoviePosters()
    }

    private func configureMoviePosters() {
        let localDataSource = LocalDataSource(appGroupExtensions: AppGroup.allCasesIdentifiers)
        let movieVisits = localDataSource.movieVisitDataSource().getMovieVisits()
        // We only take the 3 latest visited movies
        let posterPaths = Array(movieVisits.compactMap { $0.posterPath }.prefix(3))
        posterPaths.isEmpty ? todayView.setupEmptyView() : configurePostersStackView(with: posterPaths)
    }
    
    private func configurePostersStackView(with posterPaths: [String]) {
        posterPaths.forEach { posterPath in
            todayView.addPoster(with: posterPath)
        }
    }
    
    // MARK: - Selectors
    
    @objc private func openHostApp() {
        guard let url = AppExtension.url(for: .searchMovies) else { return }
        self.extensionContext?.open(url, completionHandler: nil)
    }
    
}
