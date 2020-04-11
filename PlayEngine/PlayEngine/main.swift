//
//  main.swift
//  PlayEngine
//
//  Created by Mamikos on 11/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import Foundation

func getInput(message: String) -> String? {
    print(message, terminator: " : ")
    return readLine()
}

func getInputInt(message: String) -> Int? {
    if let inputString = getInput(message: message) {
        return Int(inputString)
    } else {
        return nil
    }
}

var speedTotal = 0

func increaseSpeed(forIncrease amount: Int) -> () -> Int {
    func incremental() -> Int {
        speedTotal += amount
        return speedTotal
    }
    return incremental
}

func decreaseSpeed(forDescrease amount: Int) -> () -> Int {
    func decremental() -> Int {
        speedTotal -= amount
        return speedTotal
    }
    return decremental
}

let incrementByTen = increaseSpeed(forIncrease: 10)
let decrementByTen = decreaseSpeed(forDescrease: 10)

func startEngine() {
    print("Starting engine on..")
    print("Brem brem brem")
}

func stopEngine() {
    print("Turn off engine.")
}

func showSpeed() {
    print("Current speed is \(speedTotal)")
}

func action() {
    print("----------------------------------------")
    print("Choose menu :")
    print("[1] Increase speed")
    print("[2] Decrease speed")
    print("[3] Turn off engine")
    
    if let state = getInputInt(message: "Input menu") {
        switch state {
        case 1:
            speedTotal = incrementByTen()
            showSpeed()
            action()
        case 2:
            if speedTotal > 0 {
                speedTotal = decrementByTen()
                showSpeed()
                action()
            } else {
                stopEngine()
                break
            }
        case 3:
            stopEngine()
            break
        default:
            print("Input is not valid")
            action()
            break
        }
    } else {
        print("Input is not valid")
    }
}

startEngine()
action()
