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
            if key == numbers[i-1] {
                return numbers[i-1]
            }
            
        }
        
    }
}
