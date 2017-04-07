//: Playground - noun: a place where people can play

import UIKit

// Cretional Design Patterns

// Abstract Factory

typealias RockstarFactory = (String) -> SuperStarProtocol

protocol SuperStarProtocol {
    static var sign:String { get }
    var name:String { get }
    init(name:String)
    static func make(name:String) -> SuperStarProtocol
}


enum SuperStar {
    case rockstar
    case footballer
}

struct SuperStarFactory {
    
    static func factory(for superStar:SuperStar) -> RockstarFactory {
        switch superStar {
        case .rockstar:
            return Rockstar.make
        case .footballer:
            return Footballer.make
        }
    }
    
}

struct Rockstar:SuperStarProtocol {
    
    static var sign:String {
        return " 🎸"
    }
    
    let name:String
    
    init(name:String) {
        self.name = name
    }
    
    static func make(name:String) -> SuperStarProtocol {
        return Rockstar(name:name + " " + Rockstar.sign)
    }
    
}

struct Footballer:SuperStarProtocol {
    
    static var sign:String {
        return "⚽"
    }
    
    let name:String
    
    init(name:String) {
        self.name = name
    }
    
    static func make(name:String) -> SuperStarProtocol {
        return Footballer(name:name + " " + Footballer.sign)
    }
    
}


let factory = SuperStarFactory.factory(for: .rockstar)
factory("Jimmy Page").name

let factory2 = SuperStarFactory.factory(for: .footballer)
factory2("David Beckham").name




