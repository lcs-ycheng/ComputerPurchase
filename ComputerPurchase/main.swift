//
//  main.swift
//  ComputerPurchase
//

import Foundation

// INPUT
// Global variable, tracks how many computers we are going to collect specs for
var countOfExpectedSpecsThatWillBeProvided = 0

//set a loop
while 1 == 1 {
    print("How many specs will be provided?")
    //is it nil?
    guard let validCountOfExpectedSpecsThatWillBeProviden = readLine() else {
        continue
    }
    //is it integer?
    guard let integerCountOfExpectedSpecsThatWillBeProviden = Int(validCountOfExpectedSpecsThatWillBeProviden) else {
        continue
    }
    //is it in the loop
    if integerCountOfExpectedSpecsThatWillBeProviden < 1 || integerCountOfExpectedSpecsThatWillBeProviden > 10 {
        continue
    }
    countOfExpectedSpecsThatWillBeProvided = integerCountOfExpectedSpecsThatWillBeProviden
    break //stop the loop
}

// Write a loop to actually determine how many computer specs the user will provide
// e.g.: write the rest of the INPUT section


// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire

//set the variable of the best computer(number) and perfect computer(name)
var bestComputer = 0
var perfectComputer = ""
// Collect the list of computer specs here
for counter in 1...countOfExpectedSpecsThatWillBeProvided {
    
    // Ask user for the specs for a given computer
    print("Spec \(counter)?")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // What was provided?
    print("The given input was: \(givenInput)")
    
    // Try to seperate the integer part and the string part
    let exampleInput = givenInput
    print("The example input is: \(exampleInput)")
    let exampleInputPieces = exampleInput.split(separator: " ")
    //seperate the string part which is the computer name
    let computerName = exampleInputPieces[0]
    //seperate the integer part which is the RAM
    let computerRAM = exampleInputPieces[1]
    //seperate the integer part which is CPU
    let computerCPU = exampleInputPieces[2]
    //seperate the integer part which is disk space
    let computerDiskSpace = exampleInputPieces[3]
    //print out the result
    print("Computer name is: \(computerName)")
    print("Computer RAM amount is: \(computerRAM)")
    print("Computer CPU speed is: \(computerCPU)")
    print("Computer disk space is: \(computerDiskSpace)")
    
    //caculate the best computer
    let computer = 2 * Int((computerRAM))! + 3 * Int((computerCPU))! + Int(computerDiskSpace)!
    print(computer)
    //If the data is the highest, it should be the best computer. Print out the value of the current highest data, and the name.
    if computer > bestComputer {
        bestComputer = computer
        print(computer)
        perfectComputer = String(computerName)
    }
    
}
//Print out the overall best computer's name
print("The best computer is \(perfectComputer)")
