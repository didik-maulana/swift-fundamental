//
//  main.swift
//  FruitsGame
//
//  Created by Mamikos on 08/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import Foundation

var fruits = [String]()
var isRunning = true

func getInput(message: String) -> String? {
    print(message, terminator: ": ");
    return readLine()
}

func getInputInt(message: String) -> Int? {
    if let inputString = getInput(message: message) {
        return Int(inputString)
    } else {
        return nil
    }
}

func showAllFruits() {
    if fruits.isEmpty {
        print("Fruits is empty")
    } else {
        for (index, value) in fruits.enumerated() {
            print("\(index + 1). \(value)")
        }
    }
}

func insertFruit() {
    if let name = getInput(message: "Input fruit") {
        fruits.append(name)
    } else {
        insertFruit()
        print("Input is not valid")
    }
}

func editFruit() {
    showAllFruits()
    print("----------------------------------")
    if let position = getInputInt(message: "Input index of fruit"), position<=fruits.count && position>0, let newName = getInput(message: "Input new name") {
        fruits[position-1] = newName
    } else {
        editFruit()
        print("Input is not valid")
    }
}

func deleteFruit() {
    showAllFruits()
    if let position = getInputInt(message: "Inpit index of fruit"), position <= fruits.count && position > 0 {
        fruits.remove(at: position - 1)
    } else {
        deleteFruit()
        print("Input is not valid")
    }
}

func showMenu() {
    print("---------------MENU---------------")
    print("[1] Show menu of fruits")
    print("[2] Add fruit")
    print("[3] Edit fruit")
    print("[4] Delete fruit")
    print("[5] Exit")
    
    if let position = getInputInt(message: "Choose menu"), position <= 5 && position > 0 {
        print("----------------------------------")
        switch position {
        case 1:
            showAllFruits()
        case 2:
            insertFruit()
        case 3:
            editFruit()
        case 4:
            deleteFruit()
        case 5:
            isRunning = false
            print("Thank you")
        default:
            print("Input is not valid")
        }
    } else {
        print("Menu not found")
    }
    print("----------------------------------")
}

while isRunning {
    showMenu()
}
