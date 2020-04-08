//
//  SpaceUnitTests.swift
//  Proelium
//
//  Created by Anthony Torres on 4/7/20.
//  Copyright © 2020 EightFoldGames. All rights reserved.
//

import XCTest
@testable import Proelium

class SpaceUnitTests: XCTestCase {
    // Properties we intend to used
    var gameBoard: GameBoardStructure? = GameBoardStructure()
    
    var spaceWithToken: Space? = Space(0)
    var spaceWithoutToken: Space? = Space(0)
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        gameBoard!.setup()
        spaceWithToken!.token = Token(dict: [:])
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        // Set stuff to nil you dont plan to use.
        gameBoard = nil
        spaceWithToken = nil
        spaceWithoutToken = nil
    }
    
    // Tests to make sure all spaces on the board have a default location/position
    func testSpaceHasPosition() {
        for space in gameBoard!.spaces {
            XCTAssertNotNil(space.position)
        }
    }
    
    // This is a test to check that all spaces on the board are empty and dont have a token yet...
    func testSpacesEmpty() {
        for space in gameBoard!.spaces {
            XCTAssertTrue(space.isEmpty)
        }
    }
    
    /*
     testSpaceWithToken and testSpaceWithoutToken are tests to make sure that the `isEmpty` computed property works properly:
     
        var isEmpty: Bool {
            return (token == nil)
        }
     */
    func testSpaceWithToken() {
        XCTAssertFalse(spaceWithToken!.isEmpty)
    }
    
    func testSpaceWithoutToken() {
        XCTAssertTrue(spaceWithoutToken!.isEmpty)
    }
}
