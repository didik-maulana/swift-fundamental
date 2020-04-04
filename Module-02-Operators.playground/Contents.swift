import UIKit

// Range Operator
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count

for name in 0...count {
    print("Name is \(name)")
}

for i in 0..<count {
    print("Name is \(names[i])")
}


for name in names[...2] {
    print("Name is \(name)")
}

// Misc Operator
let three = 3
let minusThree = -three
let plusThree = -minusThree

let minusSix = -6
let plusSix = +minusSix

three > minusSix ? print("3 > -6") : print("3 is not greater than -6")

// Nil-Coalescing Operator
let defaultColor = "Blue"
var definedColor: String?
definedColor = "Red"
let colorUsed = definedColor ?? defaultColor
print(colorUsed)
