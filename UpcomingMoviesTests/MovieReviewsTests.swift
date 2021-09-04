//
//  MovieReviewsTests.swift
//  UpcomingMoviesTests
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import XCTest
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain
@testable import UpcomingMoviesData
@testable import NetworkInfrastructure

class MovieReviewsTests: XCTestCase {
    
    private var mockInteractor: MockMovieReviewsInteractor!
    private var viewModelToTest: MovieReviewsViewModelProtocol!
    
    override func setUp() {
        super.setUp()
        mockInteractor = MockMovieReviewsInteractor()
        viewModelToTest = MovieReviewsViewModel(movieId: 1, movieTitle: "Movie 1",
                                                interactor: mockInteractor)
    }
    
    override func tearDown() {
        mockInteractor = nil
        viewModelToTest = nil
        super.tearDown()
    }
    
    func testMovieReviewsTitle() {
        //Act
        let title = viewModelToTest.movieTitle
        //Assert
        XCTAssertEqual(title, "Movie 1")
    }
    
    func testGetReviewsEmpty() {
        //Arrange
        mockInteractor.getMovieReviewsResult = Result.success([])
        //Act
        viewModelToTest.getMovieReviews()
        //Assert
        XCTAssertEqual(viewModelToTest.viewState.value, .empty)
    }
    
    func testGetReviewsPopulated() {
        //Arrange
        mockInteractor.getMovieReviewsResult = Result.success([Review.with(id: "1"), Review.with(id: "2")])
        //Act
        viewModelToTest.getMovieReviews()
        mockInteractor.getMovieReviewsResult = Result.success([])
        viewModelToTest.getMovieReviews()
        //Assert
        XCTAssertEqual(viewModelToTest.viewState.value, .populated([Review.with(id: "1"), Review.with(id: "2")]))
    }
    
    func testGetReviewsPaging() {
        //Arrange
        mockInteractor.getMovieReviewsResult = Result.success([Review.with(id: "1"), Review.with(id: "2")])
        //Act
        viewModelToTest.getMovieReviews()
        //Assert
        XCTAssertEqual(viewModelToTest.viewState.value, .paging([Review.with(id: "1"), Review.with(id: "2")], next: 2))
    }
    
    func testGetReviewsError() {
        //Arrange
        mockInteractor.getMovieReviewsResult = Result.failure(APIError.badRequest)
        //Act
        viewModelToTest.getMovieReviews()
        //Assert
        XCTAssertEqual(viewModelToTest.viewState.value, .error(APIError.badRequest))
    }

}
