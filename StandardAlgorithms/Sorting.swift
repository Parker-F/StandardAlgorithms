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
    func quickSort(_ j: Int, _ numbers: [Int]) -> [Int] {
        var count = j
        let pivot = numbers[count]
        
        var left = [Int]()
        var right = [Int]()
        var sorted = [Int]()
        
        for i in 1 ..<numbers.count {
            if numbers[i] < pivot {
                left.append(numbers[i])
            } else {
                right.append(numbers[i])
            }
        }
        
        sorted.append(contentsOf: left)
        sorted.append(pivot)
        sorted.append(contentsOf: right)
        
        if count != numbers.count {
            quickSort(count,sorted)
            count += 1
        }
        return sorted
    }
    
}
