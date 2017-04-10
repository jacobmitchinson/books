//: Playground - noun: a place where people can play

import UIKit

// Cretional Design Patterns

// Abstract Factory


typealias Factory = (String) -> SuperStarProtocol

protocol SuperStarFactoryProtocol {
    static func make(name:String) -> SuperStarProtocol
}

protocol SuperStarProtocol {
    var sign:String { get }
    var name:String { get }
    var nameWithSign:String { get }
}


extension SuperStarProtocol {
    var nameWithSign: String {
        return name + " " + sign
    }
}


enum SuperStarIdentifier {
    case rockstar
    case footballer
}

struct SuperStarFactory {
    
    static func factory(for superStar:SuperStarIdentifier) -> Factory {
        switch superStar {
        case .rockstar:
            return FootballerFactory.make
        case .footballer:
            return RockstarFactory.make
        }
    }
    
}

struct RockstarFactory:SuperStarFactoryProtocol {

    static func make(name:String) -> SuperStarProtocol {
        return SuperStar(name:name, sign: " 🎸")
    }
    
}

struct FootballerFactory:SuperStarFactoryProtocol {

    static func make(name:String) -> SuperStarProtocol {
        return SuperStar(name:name, sign: "⚽")
    }
    
}

struct SuperStar:SuperStarProtocol {
    let name:String
    let sign:String
}

let rockstarFactory = SuperStarFactory.factory(for: .rockstar)
let rockstar = rockstarFactory("Jimmy Page")
rockstar.nameWithSign

let footballerFactory = SuperStarFactory.factory(for: .footballer)
let footballer = footballerFactory("David Beckham")
footballer.nameWithSign




