//: [Previous](@previous)

//: # Protocol with Associated Types

protocol Shape {
    associatedtype Color
    var color: Color { get }
    func describe() -> String
}

struct Square: Shape {
    var color: String
    func describe() -> String { "I'm a square" }
}

struct Circle: Shape {
    var color: Int
    func describe() -> String { "I'm a circle" }
}

example("Trying to use Shape as return value") {
//    func makeShape() -> Shape {
//        return Square(color: "Yellow")
//    }
//
//    let shape = makeShape()
//
//    print(shape.describe())
//    print(shape.color)
}

//: [Next](@next)
