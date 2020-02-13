//
//  main.swift
//  DataProfile
//
//  Created by Mamikos on 13/02/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import Foundation

print("Hola, Welcome to Dicoding Academy")
print("----------------------------------")

print("What's your first name ?"); let firstName = readLine()!
print("What's your last name ?"); let lastName = readLine()!
print("How about your job ?"); let job = readLine()!
print("How many age ?"); let age = readLine()!
print("Where do you live ?"); let address = readLine()!

let fullName = firstName + " " + lastName

print("----------------------------------")
print("Did you know \(fullName) ?")
print("\(firstName) is an \(job) ?")
print("Now, he is \(age) years old, and live in \(address)")
print("----------------------------------")


