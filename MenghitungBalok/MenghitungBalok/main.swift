//
//  main.swift
//  MenghitungBalok
//
//  Created by Mamikos on 04/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import Foundation

print("Welcome to Dicoding Academy")
print("----------------------------------")

print("Input length : "); let length = readLine()
print("Input width : "); let width = readLine()
print("Input height : "); let height = readLine()

if let length = Double(length ?? ""), let width = Double(width ?? "0"), let height = Double(height ?? "0") {
    let volume = length * width * height
    let surfaceArea = 2 * ((width * length) + (width * height) + (height * length))
    let circumference = 4 * (width + length + height)
    
    print("----------------------------------")
    print("Output for your input :")
    print("The length is \(length) cm")
    print("The width is \(width) cm")
    print("The height is \(height) cm")
    print("The volume is \(volume) cm3")
    print("The surfaceArea is \(surfaceArea) cm2")
    print("The circumference is \(circumference) cm")
    print("----------------------------------")
} else {
    print("----------------------------------")
    print("Wrong input, failed to calculate")
    print("----------------------------------")
}


