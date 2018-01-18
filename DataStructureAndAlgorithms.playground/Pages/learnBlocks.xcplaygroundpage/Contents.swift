//: [Previous](@previous)

import Foundation
import UIKit

var str = "Hello, playground"

//: [Next](@next)

//print("This is block testing")


func calculate(value1: Int, value2: Int, operation: (Int, Int) -> Int) {
    operation(value1, value2)
}



calculate(value1: 3, value2: 4) { (a, b) in
    return (a + b)
}

