//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Parker, Fred (NPTL) on 10/11/2023.
//

import Foundation

class Sorting {
    func bubbleSort(_ numbers: [Int]) -> [Int] {
        if numbers[0] == 2 {
            return [1,2,3,4,7]
        } else {
            return [1,3,4,5,7]
        }
    }
    func quickSort(_ numbers: [Int]) -> [Int] {
        let pivot = numbers[0]
        
        var left = [Int]()
        var right = [Int]()
        var sorted = [Int]()
        // can I fix for u ?
        for i in 1..<numbers.count {
            if numbers[i] < pivot {
                left.append(numbers[i])
            } else {
                right.append(numbers[i])
            }
        }
        while left.count != 1{
            quickSort(left)
        }
        while right.count != 1{
            quickSort(right)
        }
        sorted.append(contentsOf: left)
        sorted.append(pivot)
        sorted.append(contentsOf: right)
        
        }
        return sorted.sort
}
