//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Preeti Kesarwani on 8/2/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

class Question {
    let questionImage : String
    let question : String
    let option1 : String
    let option2 : String
    let option3 : String
    let correctAns : String
    init (img : String, q : String, op1 : String, op2 : String , op3 : String, rightAns : String) {
        questionImage = img
        question = q
        option1 = op1
        option2 = op2
        option3 = op3
        correctAns = rightAns
    }
}

