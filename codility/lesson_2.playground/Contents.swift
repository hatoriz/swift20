import Foundation


public func solution(inout A : [Int], _ K : Int) -> [Int] {

    let length = A.count
    
    guard length > 1  else {
     return A
    }
    
    if K == 0 {
        return A
    }
    
    for index in 1...K {
        A.insert(A[A.count-index], atIndex: A.startIndex)
    }
    
    for index in 1...K {
        A.removeAtIndex(length + K - index)
    }
    
    return A
}

var testArr = [0,1,2,3,4,5,6,7,8,9,1,2,3,4,5]
var outArr = solution(&testArr,12)

