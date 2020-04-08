//
//  main.swift
//  NumberCounter
//
//  Created by Mamikos on 08/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import Foundation

print("----------------------------------")
print("Input your number", terminator: ": "); let total = readLine() ?? "0"
print("----------------------------------")

if let totalItem: Int = Int(total) {
    var allValues = [Int]()
    for index in 1...totalItem {
        print("Input number index-\(index)", terminator: ": ");
        let newItem = Int(readLine() ?? "0") ?? 0
        allValues.append(newItem)
    }
    
    print("----------------------------------")
    var sum = 0
    for (_, value) in allValues.enumerated() {
        sum += value
    }
    
    let average = sum / totalItem
    var grade = ""
    
    switch average {
    case 0..<40:
        grade = "E"
    case 41..<50:
        grade = "D"
    case 51..<60:
        grade = "C"
    case 61..<80:
        grade = "B"
    case 81..<95:
        grade = "A"
    case 96..<100:
        grade = "A+"
    default:
        grade = "Not valid"
    }
    
    if grade == "Not valid" {
        print("Input is not valid")
    } else {
        print("Your grade is \(grade) with point \(total), with total \(sum) and average \(average)")
    }
    print("----------------------------------")
}

