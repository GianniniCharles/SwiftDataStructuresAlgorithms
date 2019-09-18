import Foundation

public struct Person: Equatable, Comparable {
    public static func < (lhs: Person, rhs: Person) -> Bool {
        if lhs.isMilitary && !rhs.isMilitary {
            return true //this will return true: lhs is military, rhs is not
        }
        if !lhs.isMilitary && rhs.isMilitary {
            return false //this will return false: s2 is military, s1 is not
        }
        if lhs.isMilitary == rhs.isMilitary {
            return lhs.age > rhs.age //if both are military, then return depending on the age value
        }
        return false
}
    
    let name: String
    let age: Int
    let isMilitary: Bool
    
    public init(name: String, age: Int, isMilitary: Bool) {
        self.name = name
        self.age = age
        self.isMilitary = isMilitary
    }
}
