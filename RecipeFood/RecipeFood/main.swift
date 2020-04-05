//
//  main.swift
//  RecipeFood
//
//  Created by Mamikos on 05/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import Foundation

print("----------------------------------")
print("Whats your favorite food ?"); let food = readLine() ?? ""
print("Input number of foods", terminator: ": "); let newItem = readLine() ?? "0"
print("----------------------------------")

if let totalItem = Int(newItem) {
    var recipe = [String]()
    
    for index in 1...totalItem {
        print("Item \(index)", terminator: ": "); let newItem = String(readLine() ?? "")
        recipe.append(newItem)
    }
    
    print("----------------------------------")
    print("How long time for cooking : (hours)"); let time = readLine() ?? ""
    print("----------------------------------")
    recipe.sort()
    
    print("You will cook \(food) for \(time) hours, with details : ")
    for (index, value) in recipe.enumerated() {
        print("\(index + 1). \(value)")
    }
} else {
    print("Input is not valid")
}
print("----------------------------------")
