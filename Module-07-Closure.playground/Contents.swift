import UIKit

// Closure are reference types
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var total = 0
    func increment() -> Int {
        total += amount
        return total
    }
    print(increment)
    return increment
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()
incrementBySeven()

let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()
alsoIncrementByTen()

// Autoclosure
var customerInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customerInLine.count)

let customerProvider = { customerInLine.remove(at: 0) }
print(customerInLine.count)

print("Now serving \(customerProvider())!")
print(customerInLine.count)

func serve(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())!")
}

serve(customer: customerInLine.remove(at: 0))
print(customerInLine.count)

var customerProviders = [() -> String]()
func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
    customerProviders.append(customerProvider)
}

collectCustomerProviders(customerInLine.remove(at: 0))
collectCustomerProviders(customerInLine.remove(at: 0))
print("Collected \(customerProviders.count) closures.")

for customerProvider in customerProviders {
    print("Now serving \(customerProvider())")
}

