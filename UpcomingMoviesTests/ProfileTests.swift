//
//  ProfileTests.swift
//  UpcomingMoviesTests
//
//  Created by Rotimi Joshua on 10/04/2021.
//

import XCTest
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain
@testable import NetworkInfrastructure

class ProfileTests: XCTestCase {
    
    private var mockInteractor: MockProfileInteractor!
    private var mockFactory: MockProfileViewFactory!
    private var viewModelToTest: ProfileViewModelProtocol!
    
    override func setUp() {
        super.setUp()
        mockInteractor = MockProfileInteractor()
        mockFactory = MockProfileViewFactory()
        viewModelToTest = ProfileViewModel(userAccount: User.with(),
                                           interactor: mockInteractor,
                                           factory: mockFactory)
    }
    
    override func tearDown() {
        mockInteractor = nil
        mockFactory = nil
        viewModelToTest = nil
        super.tearDown()
    }
    
    func testGetAccountDetailSuccessInfoReloaded() {
        //Arrange
        mockInteractor.getAccountDetailResult = .success(User.with(name: "Alonso"))
        let expectation = XCTestExpectation(description: "Reload account info")
        //Act
        viewModelToTest.reloadAccountInfo = {
            expectation.fulfill()
        }
        viewModelToTest.getAccountDetails()
        //Assert
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testGetAccountDetailSuccessInfoNotReloaded() {
        //Arrange
        mockInteractor.getAccountDetailResult = .success(User.with())
        let expectation = XCTestExpectation(description: "Should not reload account info")
        expectation.isInverted = true
        //Act
        viewModelToTest.reloadAccountInfo = {
            expectation.fulfill()
        }
        viewModelToTest.getAccountDetails()
        //Assert
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testGetAccountDetailError() {
        //Arrange
        mockInteractor.getAccountDetailResult = Result.failure(APIError.badRequest)
        let expectation = XCTestExpectation(description: "Should not reload account info")
        expectation.isInverted = true
        //Act
        viewModelToTest.reloadAccountInfo = {
            expectation.fulfill()
        }
        viewModelToTest.getAccountDetails()
        //Assert
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testCollectionOptionIndex() {
        //Arrange
        let collectionOptionsToTest: [ProfileCollectionOption] = [.favorites, .watchlist]
        let indexToTest = Int.random(in: 0...collectionOptionsToTest.count - 1)
        mockFactory.collectionOptions = collectionOptionsToTest
        //Act
        let firstCollectionOption = viewModelToTest.collectionOption(at: indexToTest)
        //Assert
        XCTAssertEqual(firstCollectionOption.title, collectionOptionsToTest[indexToTest].title)
    }
    
    func testGroupOtionIndex() {
        //Arrange
        let groupOptionsToTest: [ProfileGroupOption] = [.customLists]
        let indexToTest = Int.random(in: 0...groupOptionsToTest.count - 1)
        mockFactory.groupOptions = groupOptionsToTest
        //Act
        let firstGroupOption = viewModelToTest.groupOption(at: indexToTest)
        //Assert
        XCTAssertEqual(firstGroupOption.title, groupOptionsToTest[indexToTest].title)
    }
    
    func testSectionIndex() {
        //Arrange
        let sectionsToTest: [ProfileSection] = [.accountInfo, .collections, .groups, .signOut]
        let indexToTest = Int.random(in: 0...sectionsToTest.count - 1)
        mockFactory.sections = sectionsToTest
        //Act
        let section = viewModelToTest.section(at: indexToTest)
        //Assert
        XCTAssertEqual(section, sectionsToTest[indexToTest])
    }
    
    func testNumberOfSections() {
        //Arrange
        let sectionsToTest: [ProfileSection] = [.accountInfo, .collections, .groups, .signOut]
        mockFactory.sections = sectionsToTest
        //Act
        let numberOfSections = viewModelToTest.numberOfSections()
        //Assert
        XCTAssertEqual(numberOfSections, sectionsToTest.count)
    }

}
