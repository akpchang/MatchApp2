//
//  CardModel.swift
//  MatchApp2
//
//  Created by Austin Keola Pascal Chang on 5/8/20.
//  Copyright © 2020 Austin Keola Pascal Chang. All rights reserved.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {
        
        // Declare an empty array to store all the cards
        var generatedCards = [Card]()
        var usedNumbers = [Int]()
        
        // Randomly generate 8 unique pairs of cards
        while generatedCards.count < 16 {
            
            // Generate a random number
            let randomNumber = Int.random(in: 1...13)
            
            // Append random number to usedNumbers array to mark it as used
            if usedNumbers.contains(randomNumber){
                continue
            } else {
                usedNumbers += [randomNumber]
            }
            
            // Create two new card objects
            let cardOne = Card()
            let cardTwo = Card()
            
            // Set their image names
            cardOne.imageName = "card\(randomNumber)"
            cardTwo.imageName = "card\(randomNumber)"
            
            // Add them to the array, if that card pair isn't already in the array
            generatedCards += [cardOne, cardTwo]
            
            // Log random number in the console
            print(randomNumber)
        }
        
        // Randomize the cards within the array
        generatedCards.shuffle()
        
        // Return the array
        return generatedCards
    }
}
