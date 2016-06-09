// Lesson 2-1 Cyclic Rotation
import Foundation

public func solution(inout A: [Int], _K: Int) -> [Int]{
    var newArray: [Int] = []

    //add "_K" element from A into newArray from backward
    for index in 0..<_K {
        print(index)
        newArray[index] += A[A.count-index]
    }
    
    //add the rest of A for N-K to newArray
    return [1,2]
}

var A = [0,1,2,3,4,5,6,7]
solution(&A, _K: 3)