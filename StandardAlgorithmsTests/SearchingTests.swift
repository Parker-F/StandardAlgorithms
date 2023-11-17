//
//  SearchingTests.swift
//  StandardAlgorithms
//
//  Created by Parker, Fred (NPTL) on 17/11/2023.
//

import Foundation
import XCTest

final class SearchingTests: XCTestCase {
    
    struct SearchingTestCase {
        let data: [Int]
        let expected: Int
    }
    func testLinearSearchWithManyShuffledArraysOfIntegersReturnsLocation() {
        //arrange
        let searching = Searching()
        
        let testCases = [(data: [6,1,3,7,4], expected: 3 ),
                         (data: [15,1,3,2,6], expected: 6 ),
                         (data: [7,4], expected: 4 )]
        
        for testCase in testCases {
            let actual: (Int) = searching.linearSearch(testCase.data, testCases.expected)
            XCTAssertEqual(actual,testCase.expected)
        }
    }
}
