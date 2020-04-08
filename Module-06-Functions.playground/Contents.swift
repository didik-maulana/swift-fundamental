import UIKit

// Functions
func calculate(a: Int, b: Int) -> (description: String, sum: Int) {
    if a < b {
        return ("a less b max", a + b)
    } else if a == b {
        return ("a equals with b", a + b)
    } else {
        return ("a greater than b", a + b)
    }
}
calculate(a: 2, b: 4).description
calculate(a: 4, b: 2).sum
calculate(a: 2, b: 2)

// optional binding
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[0..<array.count] {
        if value < currentMin {
            currentMin = value
        } else {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}

// implicit return
func greeting(for person: String) -> String {
    "Hello, " + person + "!"
}
print(greeting(for: "didik"))
 
 
func anotherGreeting(for person: String) -> String {
   return "Hello, " + person + "!"
}
print(anotherGreeting(for: "Didik"))

// arguments label
func greet(person: String, from hometown: String) -> String {
   return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Didik", from: "Jogja"))

// Variadic paramters
func calculateRange(_ numbers: Int...) -> Int {
    var total: Int = 0
    for number in numbers {
        total += number
    }
    return total
}
calculateRange(1, 2, 3, 4, 5)
calculateRange(2, 2, 2)

// inout parameters
func swapName(_ a: inout String, _ b: inout String) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var nameA = "Didik"
var nameB = "Ahmad"
swapName(&nameA, &nameB)
print("nameA is \(nameA), and nameB is \(nameB)")

// Using function types
func addTwoNumber(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoNumber(_ a: Int, _ b: Int) -> Int {
    return a * b
}

var mathFunction: (Int, Int) -> Int = addTwoNumber
print("Number is \(mathFunction(2, 2))")

mathFunction = multiplyTwoNumber
print("Multiply number is \(mathFunction(2, 5))")

// function type as parameter of functions
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result \(mathFunction(a, b))")
}

printMathResult(mathFunction, 3, 15)

// function type as return type of function
func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func selectStep(isBackward: Bool) -> (Int) -> Int {
    return isBackward ? stepBackward : stepForward
}

var currentStep = 3
let calculateStep = selectStep(isBackward: currentStep > 0)

while currentStep != 0 {
    print("current step \(currentStep)")
    currentStep = calculateStep(currentStep)
}

// Nested functions
func chooseStep(backward: Bool) -> (Int) -> Int {
    func stepForward(_ input: Int) -> Int { return input + 1 }
    func stepBackward(_ input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}

var currentState = -4
let moveCurrentState = chooseStep(backward: currentStep > 0)

while currentState != 0 {
    print("Current state \(currentState)")
    currentState = moveCurrentState(currentState)
}
