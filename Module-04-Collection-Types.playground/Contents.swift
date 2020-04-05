import UIKit

// Array
var numbers = [Int]()
numbers.append(3)
print("Value of numbers is \(numbers.count)")

var firstNames = Array(repeating: "Didik", count: 3)
var lastNames = Array(repeating: "Maulana", count: 2)
var fullNames = firstNames + lastNames
fullNames.append("Hello")
print("fullname is \(fullNames)")

var shoppingList: [String] = ["Egg", "Fruit", "Banana", "Milk", "Indomie"]
shoppingList[0...2] = ["Rice", "Drink"]
print(shoppingList)

shoppingList.insert("Cheese", at: shoppingList.count)
print(shoppingList)

shoppingList.remove(at: 2)
print(shoppingList)

shoppingList.removeLast()
print(shoppingList)

for item in shoppingList {
    print("Item : \(item)")
}

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1) : \(value)")
}


// Set
var set = Set<String>()
set.insert("Hello")
print("Value set is \(set.count)")

var genres: Set = ["Rock", "Pop", "Metal"]
print("Number of music genres is \(genres.count)")

genres.insert("Jazz")
genres.remove("Pop")

if (genres.contains("Rock")) {
    print("is containts Rock")
}

for genre in genres {
    print(genre)
}

print("\n")

for genre in genres.sorted() {
    print(genre)
}

// Peforming Set Operations
print("\n")

let oldDigits: Set = [1, 4, 5, 7, 9]
let newDigits: Set = [0, 2, 4, 6, 8]
let singleDigits: Set = [2, 3, 5, 7]

print("Union : \(oldDigits.union(newDigits).sorted())")
print("Intersection : \(oldDigits.intersection(singleDigits).sorted())")
print("Substracting : \(oldDigits.subtracting(singleDigits).sorted())")
print("Symetric Different : \(oldDigits.symmetricDifference(singleDigits).sorted())")
print("\n")

let houseAnimals: Set = ["dog", "cat"]
let farmAnimals: Set = ["cow", "chicken", "goat", "dog", "cat"]
let cityAnimals: Set = ["bird", "mouse"]

print("is equal operator : \(houseAnimals == farmAnimals)")
print("isSubset() operator : \(houseAnimals.isSubset(of: farmAnimals))")
print("isSuperset() operator : \(farmAnimals.isSuperset(of: houseAnimals))")
print("isDisjoint() operator : \(houseAnimals.isDisjoint(with: cityAnimals))")
print("isStrictSubset() operator : \(farmAnimals.isStrictSubset(of: houseAnimals))")
print("isStrictSuperset() operator : \(farmAnimals.isStrictSuperset(of: houseAnimals))")
print("\n")

// Dictionary
var airports: [String: String] = ["DUB": "Dublin", "JAK": "Jakarta"]
print("Airports count is \(airports.count)")

airports["LDN"] = "London"
airports["DUB"] = "Dubai"

print("Airports is \(airports)")

if let oldValue = airports.updateValue("Dubai Airport", forKey: "DUB") {
    print("The old value of DUB is \(oldValue)")
}

if let airportName = airports["JAK"] {
    print("The airport is \(airportName)")
} else {
    print("The airport is not found")
}

if let removedValue = airports.removeValue(forKey: "JAK") {
    print("The old value of JAK is \(removedValue)")
}

for (code, name) in airports {
    print("Code \(code) -> \(name)")
}

for code in airports.keys.sorted() {
    print("Code \(code)")
}

for name in airports.values {
    print("Airport name \(name)")
}

let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)
