//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Parker, Fred (NPTL) on 17/11/2023.
//

import Foundation

class Searching {
    func linearSearch(_ numbers: [Int],_ key: Int) -> Int {
        for i in 0..<numbers.count {
            var number = numbers[i]
            if key == number {
                return i
            }
        }
        return -1
    }
    func binarySearch(_ numbers: [Int], _ key: Int) -> Int {
        var start = 0
        var end = numbers.count - 1
        while start <= end {
            let mid = start + (end-start) / 2
            if numbers[mid] == key{
                return mid
            } else if numbers[mid] < key{
                start = mid + 1
            } else {
                end = mid - 1
            }
        }
        return -1
    }
    
    
    
    
    
}

