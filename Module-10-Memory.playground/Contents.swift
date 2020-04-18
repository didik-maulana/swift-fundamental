import UIKit

class Person {
    let name: String
    var apartment: Apartment?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Apartment {
    let unit: String
    init(unit: String) {
        self.unit = unit
    }
    
    weak var tenant: Person?
    deinit {
        print("Apartment \(unit) is being deinitialized")
    }
}

// ARC - automatic reference counting
//var reference1: Person?
//var reference2: Person?
//var reference3: Person?
//
//reference1 = Person(name: "Dicoding indonesia")
//reference2 = reference1
//reference3 = reference1
//
//reference1 = nil
//reference2 = nil
//reference3 = nil

// weak reference
var member: Person?
var place: Apartment?

member = Person(name: "Didik")
place = Apartment(unit: "Apartment 2")

member!.apartment = place
place!.tenant = member

member = nil
place = nil

class Human {
    let name: String
    var phoneNumber: PhoneNumber?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

class PhoneNumber {
    let number: UInt64
    unowned let owner: Human
    
    init(number: UInt64, owner: Human) {
        self.number = number
        self.owner = owner
    }
    
    deinit {
        print("Phone number +\(number) is being deinitialized")
    }
}

var human: Human?
human = Human(name: "Didik Maulana")
human!.phoneNumber = PhoneNumber(number: 62810_8108_1081, owner: human!)
human = nil


func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(_ input: Int) -> Int { return input + 2 }
    func stepBackward(_ input: Int) -> Int { return input - 2 }
    return backward ? stepBackward : stepForward
}

var currentValue = -9
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
