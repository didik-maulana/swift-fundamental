import UIKit

enum CompasPoint: String {
    case north, south, east, west
}

var direction = CompasPoint.east
direction = .south
print("Direction compass -> \(direction.rawValue)")

switch direction {
case .east:
    print("direction east")
case .north:
    print("direction north")
case .south:
    print("direction south")
case .west:
    print("direction west")
}

// iterating over enumeration class
enum Baverage: CaseIterable {
    case coffee, tea, juice
}

let choiceCount = Baverage.allCases.count
print("\(choiceCount) baverages available")

for baverage in Baverage.allCases {
    print(baverage)
}

// Associated values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productCode = Barcode.qrCode("Codingtive")
productCode = .upc(10, 19, 22, 5)

switch productCode {
case let .upc(numberSystem, manufacture, product, check):
    print("Code \(numberSystem)/\(manufacture)-\(product)/\(check)")
case let .qrCode(productCode):
    print("Code \(productCode)")
}

enum Planet: Int {
   case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let planetPosition = 3
if let somePlanet = Planet(rawValue: planetPosition) {
    switch somePlanet {
    case .earth:
        print("This is earth!")
    default:
        print("Not safe planet for humans")
    }
} else {
    print("Planet with id \(planetPosition) is not found")
}

// Recursive Enumeration
indirect enum ArithmaticExpression {
    case number(Int)
    case addition(ArithmaticExpression, ArithmaticExpression)
    case multiplication(ArithmaticExpression, ArithmaticExpression)
}

let five = ArithmaticExpression.number(5)
let four = ArithmaticExpression.number(4)
let sum = ArithmaticExpression.addition(five, four)
let product = ArithmaticExpression.multiplication(sum, ArithmaticExpression.number(2))

func evaluate(_ expression: ArithmaticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}
print(evaluate(product))
