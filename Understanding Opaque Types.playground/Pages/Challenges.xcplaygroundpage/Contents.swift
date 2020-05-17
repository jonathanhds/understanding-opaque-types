//: [Previous](@previous)

//: # Challenges

import Foundation

protocol Shape {}
struct Square: Shape, CustomDebugStringConvertible {
    var debugDescription: String { "Square" }
}
struct Triangle: Shape, CustomDebugStringConvertible {
    var debugDescription: String { "Triangle" }
}

example("Challenge 1: Does this code compile?") {
//    func makeShape(sizes: Int) -> Shape {
//        return sizes == 4 ? Square() : Triangle()
//    }
//
//    print(makeShape(sizes: 3))
//    print(makeShape(sizes: 4))
}

example("Challenge 2: Does this code compile?") {
//    func makeShape(sizes: Int) -> some Shape {
//        return sizes == 4 ? Square() : Triangle()
//    }
//
//    print(makeShape(sizes: 3))
//    print(makeShape(sizes: 4))
}

struct Union<T: Shape, U: Shape>: Shape, CustomDebugStringConvertible {
    let shape1: U
    let shape2: T
    var debugDescription: String { "Union: [\(shape1), \(shape2)]" }
}

func join<T: Shape, U: Shape>(shape1: T, shape2: U) -> Shape {
    return Union(shape1: shape1, shape2: shape2)
}

example("Challenge 3: Does this code compile?") {
//    let result = join(
//        shape1: join(shape1: Triangle(),
//                     shape2: Square()),
//        shape2: Triangle()
//    )
//
//    print(result)
}

protocol OperatingSystem {
    associatedtype Version
    var version: Version { get }
}
struct iOS: OperatingSystem, CustomDebugStringConvertible {
    var version: Float { 13.1 }
    var debugDescription: String { "iOS \(version)" }
}
struct Android: OperatingSystem, CustomDebugStringConvertible {
    var version: Int { 11 }
    var debugDescription: String { "Android \(version)" }
}

example("Challenge 4: Does this code compile?") {
//    func bestOperatingSystem() -> OperatingSystem {
//        return iOS()
//    }
//
//    let operatingSystem = bestOperatingSystem()
//
//    print("The best operating system is: \(operatingSystem)")
}

//: [Next](@next)
