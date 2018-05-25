//
//  main.swift
//  PigLatin
//

import Foundation

// INPUT
var n = 0

while 1 == 1 {
    
    // Ask for input
    print("How many words will be provided?")
    
    //If it's nil
    guard let givenNumberOfWords = readLine() else {
        continue // Prompt again
    }
    
    //If it's an integer
    guard let integerNumberOfWords = Int(givenNumberOfWords) else {
        continue // Prompt again
    }
    
    //If it's more than 0, less than 10
    if integerNumberOfWords < 0 || integerNumberOfWords > 10 {
        continue // Prompt again
    }
    
    //Here the input is valid
    n = integerNumberOfWords
    break // Stop prompting
}



// Collect the words to be translated
for counter in 1...n {
    
    // Ask user for the word to be translated
    print("Enter word #\(counter):")
    
    // Create a variable that has the translated word
    var translation = ""

    // If it is nil
    guard let input = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // Replace this logic with the correct logic
    var vowelFound = false
    var suffix = ""
    var prefix = ""
    for letter in input {
        print(letter)
        //Find the first vowel
        if vowelFound == false {
            switch letter {
            case "A","E","I","O","U":
                vowelFound = true
            default:
                vowelFound = false
            }
        }
        print(vowelFound)
        
        // Decision: When we haven't found a vowel, add the letter to the suffix
        //           When we have found a vowel, add the letter to the prefix
        
        if vowelFound == true {
           prefix += String(letter)
        } else {
            suffix += String(letter)
        }
    
    // Assemble the translated word
    translation = prefix + suffix + "AY"
        print(translation)
    

    
}


}

