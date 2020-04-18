import UIKit

// struct and classes
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let vga = Resolution(width: 120, height: 200)
let videoMode = VideoMode()
videoMode.frameRate = 10.0

let hd = Resolution(width: 1980, height: 1280)
var cinema = hd
cinema.width = 2480

print("Width : \(hd.width)")
print("Width : \(cinema.width)")

// same case on enumeration
enum CompassPoint {
    case north, west, south, east
    mutating func turnNorth() {
        self = .north
    }
}

var currentDirection = CompassPoint.west
let rememberDirection = currentDirection
currentDirection.turnNorth()

print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberDirection)")

// Class
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
tenEighty.frameRate = 30.0

print("Current frame rate is \(tenEighty.frameRate)")

if tenEighty === alsoTenEighty {
    print("Same instance")
} else {
    print("not same instance")
}

// Properties
// lazy properties
class DataImporter {
    var fileName = "file.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Data 1")
manager.data.append("Data 2")
// instance of importer is not created

print(manager.importer.fileName)
// instance of importer is created

// Property Observer
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newSteps) {
            print("About to set totalSteps to \(newSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 50
stepCounter.totalSteps = 150
stepCounter.totalSteps = 420

// Static properties
struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}

enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}

class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
}

print(SomeStructure.storedTypeProperty)
SomeStructure.storedTypeProperty = "Another value."
print(SomeStructure.storedTypeProperty)

print(SomeEnumeration.computedTypeProperty)

print(SomeClass.computedTypeProperty)

// Method
// Modifying value type
struct Point {
    var x = 0, y = 0
    mutating func moveBy(x deltaX: Int, y deltaY: Int) {
        self = Point(x: x + deltaX, y: y + deltaY)
    }
}

var point = Point(x: 1, y: 1)
point.moveBy(x: 2, y: 3)
print("The point is now at (\(point.x), \(point.y))")

enum StateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}

var ovenLight = StateSwitch.low
ovenLight.next()
ovenLight.next()

// Subscript
struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let timesTable = TimesTable(multiplier: 3)
print("six times three is \(timesTable[6])")

// Subscript Option
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 1] = 1.5
matrix[1, 0] = 3.2

enum Planet: Int {
   case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
   static subscript(n: Int) -> Planet {
       return Planet(rawValue: n)!
   }
}
let mars = Planet[4]
print(mars)

// Inheritance
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "running with speed \(currentSpeed)"
    }
    
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.currentSpeed = 100.0
print(bicycle.description)

class Train: Vehicle {
    override func makeNoise() {
        print("Hello World!")
    }
}

let train = Train()
train.makeNoise()

// initializer
struct Celcius {
    var temperatureInCelcius: Double
    
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelcius = (fahrenheit - 32) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperatureInCelcius = kelvin - 273.15
    }
}

let boilingPointOfWater = Celcius(fromFahrenheit: 212.0)
print(boilingPointOfWater.temperatureInCelcius)

let freezePointOfWater = Celcius(fromKelvin: 273.15)
print(freezePointOfWater.temperatureInCelcius)

struct Size {
    var width = 0.0, height = 0.0
}
let size = Size(width: 10, height: 5)
print("width : \(size.width), height : \(size.height)")

class SizeClass {
    var width: Double, height: Double
    init(w: Double, h: Double) {
        width = w
        height = h
    }
}

let sizeTest = SizeClass(w: 10, h: 5)
print("width : \(sizeTest.width), height : \(sizeTest.height)")

class Car {
    var color: String
    var speed: Int
    
    required init(color: String, speed: Int) {
        self.color = color
        self.speed = speed
    }
}

// Deinitialization
var counter = 3
class CounterClass {
    init() {
        counter += 1
    }
    
    deinit {
        counter -= 1
    }
}

var counterClass: CounterClass? = CounterClass()
print(counter)

counterClass = nil
print(counter)

// Generic Functions
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var number1 = 1
var number2 = 5
swapTwoValues(&number1, &number2)
print("Number 1: \(number1), Number 2: \(number2)")

var word1 = "Dicoding"
var word2 = "Codingtive"
swapTwoValues(&word1, &word2)
print("Word 1: \(word1), Word 2: \(word2)")

// Generic Type
protocol Container {
   associatedtype T
   mutating func append(_ item: T)
   var count: Int { get }
   subscript(i: Int) -> T { get }
}

struct Stack<T>: Container {
    var items = [T]()
    
    mutating func push(_ item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
    
    mutating func append(_ item: Stack<T>.T) {
        self.push(item)
    }
    
    var count: Int {
        return items.count
    }
    
    subscript(i: Int) -> T {
        return items[i]
    }
}

class Person {
    let name: String
    init(name: String) { self.name = name; print("\(name) is being initialized") }
    deinit { print("\(name) is being deinitialized") }
}
var reference1: Person? = Person(name: "Dicoding indonesia")
var reference2: Person? = reference1
var reference3: Person? = reference1
reference1 = nil
reference2 = nil
reference3 = nil
