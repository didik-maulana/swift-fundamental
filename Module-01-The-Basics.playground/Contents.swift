import UIKit

// variables and constants
var language = "Kotlin"
let name = "Didik"

language = "Swift"
let message = "My name is \(name), I like \(language)"
print(message)

// example single line comments
/*
This is example for multiple comments
line 2
*/

/*
This is example for multiline comments
/* This is second of block comments */
This is first of block comments
*/

// Integers
let minValueInt8 = Int8.min
let maxValueInt8 = Int8.max

let minValueInt16 = Int16.min
let maxValueInt16 = Int16.max

let minValueInt32 = Int32.min
let maxValueInt32 = Int32.max

let minValueInt64 = Int64.min
let maxValueInt64 = Int64.max

let minValueInt = Int.min
let maxValueInt = Int.max

// Float and Double
let price = 3.5
let priceBanana: Float = 500.20
let priceMango: Double = 1200.50

// Numeric Literals
let decimalInteger = 18
let binaryInteger = 0b10010
let octalInteger = 0o22
let hexadecimalInteger = 0x12
let paddedDouble = 0000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// Numeric Type Conversion
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let fiveDouble = 5.5
let tenInt = 10
let fiveAndTen = tenInt + Int(fiveDouble)

// Type aliases
typealias IntCounter = Int
let maxIntCounter = IntCounter.max

// Boolean
let isGotMarried = false
let isLikeSwift = true

// Tuples
let person = ("Didik", 19, 47.5, true)
let (personName, personAge, personWeight, isLoveSwift) = person
print("My name is \(personName), my age is \(person.1) years old, with weight \(person.2)kg and love Swift is \(isLoveSwift)")

let httpResponse = (status: "OK", requestCode: 200, message: "Request has been succeed")
print("status: \(httpResponse.status), requestCode: \(httpResponse.requestCode), and message: \(httpResponse.message)")

// Optionals
var optionalNumber: Int? = 12
optionalNumber = nil
print("Optional number : \(optionalNumber ?? 20)")
if optionalNumber != nil {
    // like force !! in Kotlin
    print("Optional number is not nil, \(optionalNumber!)")
} else {
    print("Optional number is nil")
}

let possibleNumber = "12"
if let actualNumber = Int(possibleNumber) {
    print("The string \(possibleNumber) is int of \(actualNumber)")
} else {
    print("The string \(possibleNumber) could not converted to int")
}

if let firstNumber = Int("32") {
    if let secondNumber = Int("22") {
        if firstNumber > secondNumber {
            print("\(firstNumber) greater than \(secondNumber)")
        }
    }
}
