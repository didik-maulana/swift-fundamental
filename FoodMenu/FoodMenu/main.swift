//
//  main.swift
//  FoodMenu
//
//  Created by Mamikos on 12/04/20.
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

enum HeavyMeal: Int, CaseIterable {
    case nasiGoreng = 1, indomie, magelangan, nasiKuning, kwetiau, nasiPutih
}

enum SideDish: Int, CaseIterable {
    case ikan = 1, telur, tempe, tahu, kerupuk
}

enum Drink: Int, CaseIterable {
    case esTeh = 1, esJeruk, kopi, airPutih
}

func showAllHeavyMeal() {
    var position = 1
    print("Heavy Meal Menu")
    for heavyMeal in HeavyMeal.allCases {
        print("\(position). \(heavyMeal)")
        position += 1
    }
}

func showAllSideDish() {
    var position = 1
    print("Side Dish Menu")
    for sideDish in SideDish.allCases {
        print("\(position). \(sideDish)")
        position += 1
    }
}

func showAllDrink() {
    var position = 1
    print("Drinks Menu")
    for drink in Drink.allCases {
        print("\(position). \(drink)")
        position += 1
    }
}

var total = 0
var item = ("", "", "")

func inputHeavyMeal() {
    if let position = getInputInt(message: "Choose heavy meal") {
        if let heavyMeal = HeavyMeal(rawValue: position) {
            switch heavyMeal {
            case .indomie:
                total += 6000
                item.0 = "Indomie"
            case .kwetiau:
                total += 10000
                item.0 = "Kwetiau"
            case .magelangan:
                total += 7000
                item.0 = "Magelangan"
            case .nasiGoreng:
                total += 9000
                item.0 = "Nasi Goreng"
            case .nasiKuning:
                total += 5000
                item.0 = "Nasi Kuning"
            case .nasiPutih:
                total += 3000
                item.0 = "Nasi Putih"
            }
        } else {
            print("Menu not found")
        }
    } else {
        print("Input is not valid")
    }
}

func inputSideDish() {
    if let position = getInputInt(message: "Choose Side Dish") {
        if let sideDish = SideDish(rawValue: position) {
            switch sideDish {
            case .ikan:
                total += 5000
                item.1 = "Ikan"
            case .kerupuk:
                total += 500
                item.1 = "Kerupuk"
            case .tahu:
                total += 1000
                item.1 = "Tahu"
            case .telur:
                total += 3000
                item.1 = "Telur"
            case .tempe:
                total += 1000
                item.1 = "Tempe"
            }
        } else {
            print("Menu not found")
        }
    } else {
        print("Input is not valid")
    }
}

func inputDrink() {
    if let position = getInputInt(message: "Choose drink") {
        if let drink = Drink(rawValue: position) {
            switch drink {
            case .airPutih:
                total += 0
                item.2 = "Air Putih"
            case .esJeruk:
                total += 2500
                item.2 = "Es Jeruk"
            case .esTeh:
                total += 2000
                item.2 = "Es Teh"
            case .kopi:
                total += 3000
                item.2 = "Kopi"
            }
        } else {
            print("Menu not found")
        }
    } else {
        print("Input is not valid")
    }
}

func menu() {
    print("--------------------------------------")
    showAllHeavyMeal()
    inputHeavyMeal()
    print("--------------------------------------")
    showAllSideDish()
    inputSideDish()
    print("--------------------------------------")
    showAllDrink()
    inputDrink()
    print("--------------------------------------")
    print("Your menu is \(item.0), \(item.1), \(item.2), price total Rp \(total)")
    print("--------------------------------------")
}

menu()
