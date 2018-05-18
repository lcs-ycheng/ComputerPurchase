//
//  main.swift
//  ComputerPurchase
//

import Foundation

// INPUT
// Global variable, tracks how many computers we are going to collect specs for
var countOfExpectedSpecsThatWillBeProvided = 0

while 1 == 1 {
    print("How many specs will be provided?")
    guard let validCountOfExpectedSpecsThatWillBeProviden = readLine() else {
        continue
    }
    guard let integerCountOfExpectedSpecsThatWillBeProviden = Int(validCountOfExpectedSpecsThatWillBeProviden) else {
        continue
    }
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

var bestComputer = 0
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
    
    // NOTE:
    //
    // Some example code that may be useful
    let exampleInput = givenInput
       print("The example input is: \(exampleInput)")
       let exampleInputPieces = exampleInput.split(separator: " ")
        let computerName = exampleInputPieces[0]
        let computerRAM = exampleInputPieces[1]
        let computerCPU = exampleInputPieces[2]
        let computerDiskSpace = exampleInputPieces[3]
    print("Computer name is: \(computerName)")
    print("Computer RAM amount is: \(computerRAM)")
    print("Computer CPU speed is: \(computerCPU)")
    print("Computer disk space is: \(computerDiskSpace)")
    
    // Implement the rest of your logic here...
 
    let computer = 2 * Int((computerRAM))! + 3 * Int((computerCPU))! + Int(computerDiskSpace)!
    print(computer)
    if computer > bestComputer {
         bestComputer = computer
    }
    print("The best computer is \(computerName)")
}

