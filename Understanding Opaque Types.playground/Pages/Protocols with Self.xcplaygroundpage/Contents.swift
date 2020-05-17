//: [Previous](@previous)

//: # Protocols with Self

/*
public protocol Equatable {
    static func == (lhs: Self, rhs: Self) -> Bool
}
*/

func makeInt() -> Equatable {
    return Int.random(in: 1...10)
}

example("Trying to use == operator") {
    let value1 = makeInt()
    let value2 = makeInt()
    print(value1 == value2)
}

//: [Next](@next)
