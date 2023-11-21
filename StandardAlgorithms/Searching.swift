//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Parker, Fred (NPTL) on 17/11/2023.
//

import Foundation

class Searching {
    func linearSearch(_ numbers: [Int],_ key: Int) -> Int {
        for i in 0...numbers.count {
            var number = numbers[i-1]
            if key == number {
                return number
            }
            
        }
        
    }
}
