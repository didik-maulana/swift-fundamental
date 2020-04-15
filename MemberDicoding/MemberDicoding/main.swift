//
//  main.swift
//  MemberDicoding
//
//  Created by Mamikos on 15/04/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import Foundation

func getInputString(message: String) -> String{
    print(message, terminator: " : ");
    return readLine() ?? ""
}
 
func getInputInt(message: String) -> Int{
    return Int(getInputString(message: message)) ?? 0
}

protocol PersonProtocol {
    var firstName: String {set get}
    var lastName: String {set get}
    var address: String {set get}
    func fullName() -> String
}

class Person : PersonProtocol {
    var firstName: String
    var lastName: String
    var address: String
    
    init(firstName: String, lastName: String, address: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
    }
    
    func fullName() -> String {
        var parts: [String] = []
        parts += [firstName]
        parts += [lastName]
        return parts.joined(separator: " ")
    }
}

protocol StudentProtocol {
    var school: String {get set}
    func getInformation() -> String
}

class Student : Person, StudentProtocol {
    var school: String = ""
    
    func getInformation() -> String {
        "Hola, my name is \(fullName()), my school is \(school), let's learn together!"
    }
}

print("--------------------------------------")
let firstName = getInputString(message: "Your first name ?")
let lastName = getInputString(message: "Your last name ?")
let address = getInputString(message: "Where do you live ?")
let school = getInputString(message: "What's your school name ?")

let member = Student(firstName: firstName, lastName: lastName, address: address)
member.school = school

print("--------------------------------------")
print(member.getInformation())
print("--------------------------------------")
