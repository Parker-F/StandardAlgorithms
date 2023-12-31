//
//  SortingTests.swift
//  StandardAlgorithmsTests
//
//  Created by Parker, Fred (NPTL) on 10/11/2023.
//

import XCTest

final class SortingTests: XCTestCase {
    
    struct SortingTestCase {
        let data: [Int]
        let expected: [Int]
    }
    func testMergeSortWithManyShuffledArraysOfIntegersReturnsThemInAscendingOrder() {
        //arrange
        let sorting = Sorting()
        
        let testCases = [(data: [6,1,3,7,4], expected: [1,3,4,6,7]),
                         (data: [15,1,3,2,6], expected: [1,2,3,6,15]),
                         (data: [7,4], expected: [4,7])]
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.mergeSort(testCase.data)
            XCTAssertEqual(actual,testCase.expected)
        }
        func testBubbleSortWithManyShuffledArraysOfIntegersReturnsThemInAscendingOrder() {
            //arrange
            let sorting = Sorting()
            
            let testCases = [(data: [5,1,3,7,4], expected: [1,3,4,5,7]),
                             (data: [2,1,3,7,4], expected: [1,2,3,4,7]),
                             (data: [7,4], expected: [4,7])]
            //act
            //assert
            for testCase in testCases {
                let actual = sorting.bubbleSort(testCase.data)
                XCTAssertEqual(actual,testCase.expected)
            }
        }
        func testQuickSortWithManyShuffledArraysOfIntegersReturnsThemInAscendingOrder() {
            //arrange
            let sorting = Sorting()
            
            let testCases = [(data: [6,1,3,7,4], expected: [1,3,4,6,7]),
                             (data: [15,1,3,2,6], expected: [1,2,3,6,15]),
                             (data: [7,4], expected: [4,7])]
            //act
            //assert
            for testCase in testCases {
                let actual = sorting.quickSort(testCase.data)
                XCTAssertEqual(actual,testCase.expected)
            }
        }
    }
}
