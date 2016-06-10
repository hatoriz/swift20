//
//  main.swift
//  codility
//
//  Created by Nathdanai on 6/10/2559 BE.
//  Copyright © 2559 hatoriz. All rights reserved.
//

import Foundation

var testArr = [9, 3, 9, 3, 9, 7, 9]


public func solution(inout A: [Int]) -> Int {
    
    guard A.count > 1 else {
        return 0
    }
    
    var unpaired = [Int]()
    var inspect: Bool = false
    
    //sorting
    A.sortInPlace()
    
    for index in 0...A.count-1 {
        
        if index == A.count-1 && inspect {
            unpaired.append(A[index])
            return unpaired[0]
        }
        else{
            return unpaired[0]
        }
        
        if A[index] != A[index+1] {
            if inspect {
                unpaired.append(A[index])
                inspect = false
            }
            inspect = true
        }
        else
        {
            inspect = false
        }
    }
    return unpaired[0]
}


///------------------------- start
let output = solution(&testArr)
print("Output is \(output)")



