//: [Previous](@previous)

//: # Generics vs Opaque Types

protocol Fighter {
    associatedtype Model
    var model: Model { get }
    init()
}
struct XWing: Fighter {
    var model: String { "X-Wing 1.0" }
}
struct TIEAdvanced: Fighter {
    var model: Double { 42.03 }
}

func launchFigherUsingGenerics<T>() -> T where T: Fighter {
    return T()
}

example("Launch fighters using Generics") {
    let fighter1: XWing = launchFigherUsingGenerics()
    let fighter2: TIEAdvanced = launchFigherUsingGenerics()

    print(fighter1, fighter2)
}

func launchFigherUsingOpaqueType() -> some Fighter {
    return XWing()
}

example("Launch fighters using Opaque Types") {
    let fighter = launchFigherUsingOpaqueType()

    print(fighter)
}
//: [Next](@next)
