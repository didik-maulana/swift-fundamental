import UIKit

// For in loops
let names = ["Anna", "Dian", "Brian", "Jack"]
for name in names {
    print(name)
}

let animals = ["Cat": 4, "Bird": 2, "Snake": 0]
for (name, legCount) in animals {
    print("\(name) have leg \(legCount)")
}

for i in 1..<4 {
    print("Number \(i)")
}

let hours = 12
let interval = 3
for tick in stride(from: 0, to: hours, by: interval) {
    print("Tick \(tick)")
}
print("\n")

for tick in stride(from: 0, through: hours, by: interval) {
    print("Tick \(tick)")
}
print("\n")

// While
var counter = 1
var counterMax = 6

while counter <= counterMax {
    if counter % 2 == 0 {
        print("\(counter) adalah bilangan genap")
    } else {
        print("\(counter) adalah bilangan ganjil")
    }
    counter += 1
}
print("\n")

var number = 1
var numberMax = 6

repeat {
    if number % 2 == 0 {
        print("\(number) adalah bilangan genap")
    } else {
        print("\(number) adalah bilangan ganjil")
    }
    number += 1
} while number <= numberMax
print("\n")

// Conditional Statement
let color = "red"

switch color {
case "blue":
    print("color is blue")
case "red":
    print("color is red")
default:
    print("color is yellow")
}

let point = (1, 1)
switch point {
case (0, 0):
    print("\(point) is at the origin")
case (_, 0):
    print("\(point) is at the x-axis")
case (0, _):
    print("\(point) is at the y-axis")
case (-2...2, -2...2):
    print("\(point) is at inside the box")
default:
    print("\(point) is at outside the box")
}

// value binding
let position = (2, 0)
switch position {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with an y value of \(y)")
case (let x, let y):
    print("somewhere else at (\(x), \(y))")
}

// where statement
switch position {
case let (x, y) where x == y:
    print("(\(x), \(y)) is same")
case let (x, y) where x - 2 == y:
    print("(\(x), \(y)) is reset")
case let (x, y):
    print("(\(x), \(y)) something whats wrong")
}

// compound cases
let itemCounter = 2
switch itemCounter {
case 3...4:
    print("\(itemCounter) is 3-4 range")
case -2...2:
    print("\(itemCounter) is (-2)-2 range")
default:
    print("\(itemCounter) is not on range")
}

// Control Transfer Statement
// 1. continue
let puzzleInput = "great minds think a like"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "i", "u", "e", "o", " "]

for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)

// fallthough
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
   description += " a prime number, and also"
   fallthrough
case 20, 22, 14, 133:
    description += " not prime number"
default:
   description += " an integer."
}
print(description)


// Early Exit using guard
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    print("Hello \(name)")
    
    guard let location = person["location"] else {
        print("I hope my location near with you")
        return
    }
    print("I hope the weather is nice in \(location)")
}

greet(person: ["name": "John"])
greet(person: ["name": "Didik", "location": "Jogja"])
