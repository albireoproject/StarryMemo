//
//  StarryObject.swift
//  StarryMemo
//
//  Created by Hongsun Yoon, M.D. on 11/11/14.
//  Copyright (c) 2014 Hongsun Yoon, M.D. All rights reserved.
//

import Foundation
import UIKit

struct StarryObject {
    var imageOfPhoto = UIImage(named: "")
    var titleOfPhoto = ""
    var dateOfPhoto = ""
    var memoOfPhoto = ""
    
    func randomQuote () -> String {
        
        var randomNumber: Int
        var currentNumber = 0
        
        do {
        randomNumber = Int(arc4random_uniform(UInt32(5)))
        } while randomNumber == currentNumber
        
        currentNumber = randomNumber
        
        var randomQuote:String
        
        if randomNumber == 0 {
            randomQuote = "\"Somewhere, something incredible is waiting to be known.\""
        }
        
        else if randomNumber == 1 {
            randomQuote = "\"Extinction is the rule. Survival is the exception.\""
        }
        
        else if randomNumber == 2 {
            randomQuote = "\"Imagination will often carry us to worlds that never were. But without it we go nowhere.\""
        }

        else if randomNumber == 3 {
            randomQuote = "\"If we long to believe that the stars rise and set for us, that we are the reason there is a Universe, does science do us a disservice in deflating our conceits?\""
        }
        
        else {
            randomQuote = "\"The universe seems neither benign nor hostile, merely indifferent.\""
        }
        
        let finalRandomQuote = randomQuote + " Carl Sagan"

        return finalRandomQuote
    }
}