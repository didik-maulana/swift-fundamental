//
//  main.swift
//  PlayingWords
//
//  Created by Mamikos on 04/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import Foundation

print("Lets playing words together")
print("----------------------------------")
print("Input your first name : "); let firstName = String(readLine() ?? "")
print("Input your last name : "); let lastName = String(readLine() ?? "")
print("----------------------------------")

// Concatenation Operator
let fullName = firstName + lastName
print("Your fullname is \(fullName)")

// Mutablity Operator
var fullName2 = ""
fullName2 += firstName
fullName2 += lastName
print("Your fullname is \(fullName2)")

// Comparison Operator
var isSameName = (firstName == lastName)
print("Is name same : \(isSameName)")
print("----------------------------------")

// String Functions
let isEmptyName = (firstName.isEmpty || lastName.isEmpty)
print("Is empty name : \(isEmptyName)")

let startIndex = fullName[fullName.startIndex]
print("Start index : \(startIndex)")

let index = fullName[fullName.index(after: fullName.startIndex)]
print("Index : \(index)")

let customIndex = fullName[fullName.index(fullName.startIndex, offsetBy: 5)]
print("Custom Index : \(customIndex)")

let endIndex = fullName[fullName.index(before: fullName.endIndex)]
print("End Index : \(endIndex)")


var insert = fullName
insert.insert("!", at: insert.endIndex)
print("Insert : \(insert)")

var remove = insert
remove.remove(at: remove.index(before: remove.endIndex))
print("Remove : \(remove)")

var append = firstName
append.append(lastName)
print("Append : \(append)")

let count = append.count
print("Count : \(count)")
print("----------------------------------")
