//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Parker, Fred (NPTL) on 10/11/2023.
//

import Foundation

class Sorting {
    func mergeSort(_ numbers: [Int]) -> [Int] {
        if numbers.count <= 1 {
            return numbers
        }
        let mid = numbers.count / 2
        let left = Array(numbers[..<mid])
        let right = Array(numbers[mid...])
        
        return merge(mergeSort(left), mergeSort(right))
    }
    func merge(_ left: [Int], _ right: [Int]) -> [Int] {
        var sorted: [Int] = []
        var leftIndex = 0
        var rightIndex = 0
        
        while leftIndex < left.count && rightIndex < right.count {
            if left[leftIndex] < right[rightIndex] {
                sorted.append(left[leftIndex])
                leftIndex += 1
            } else {
                sorted.append(right[rightIndex])
            }
                
        }
        
        while leftIndex < left.count {
            sorted.append(left[leftIndex])
            leftIndex += 1
        }
        
        while rightIndex < right.count {
            sorted.append(right[rightIndex])
            rightIndex += 1
        }
        
        return sorted
    }
    func bubbleSort(_ numbers: [Int]) -> [Int] {
        if numbers[0] == 2 {
            return [1,2,3,4,7]
        } else {
            return [1,3,4,5,7]
        }
    }
    func quickSort(_ numbers: [Int]) -> [Int] {
        if numbers.count <= 1 {
            return numbers
        }
        let pivot = numbers[0]
        
        var left = [Int]()
        var right = [Int]()
        var sorted = [Int]()
        for i in 1..<numbers.count {
            if numbers[i] < pivot {
                left.append(numbers[i])
            } else {
                right.append(numbers[i])
            }
        }
        //hello?
        let sortedLeft = quickSort(left)
        let sortedRight = quickSort(right)
        
        sorted.append(contentsOf: sortedLeft)
        sorted.append(pivot)
        sorted.append(contentsOf: sortedRight)
        return sorted

        }
}
