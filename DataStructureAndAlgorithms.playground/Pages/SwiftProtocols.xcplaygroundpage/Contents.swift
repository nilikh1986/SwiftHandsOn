//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

protocol Bird {
    var name: String {get}
    var canFly: Bool {get}
}

protocol Flyable {
    var airSpeedVelocity: Double {get}
}

struct FlappyBird: Bird, Flyable {
    let name: String
    let canFly = true
    let flappyAmplitude: Double
    let flappyFrequency: Double
    
    var airSpeedVelocity: Double {
        return 3 * flappyAmplitude * flappyFrequency
    }
}
