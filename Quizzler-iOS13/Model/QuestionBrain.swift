//
//  QuestionBrain.swift
//  Quizzler-iOS13
//
//  Created by Preeti Kesarwani on 8/2/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

class QuestionBrain {
    
    var quiz = [Question] ()
    
    init() {
        quiz.append(Question(img: "INDIA", q: "Who Is Prime Miniter Of India", op1: "Modi", op2: "Yogi", op3: "Rahul", rightAns: "Modi"))
        quiz.append(Question(img: "USA", q: "Who Is Prime Miniter Of USA", op1: "Joe Biden", op2: "Jill Biden", op3: "Kamala Harris", rightAns: "Joe Biden"))
        quiz.append(Question(img: "CANADA", q: "Who Is Prime Miniter Of Canada", op1: "Ryan", op2: "Justin Trudeau", op3: "Pierre Trudeau", rightAns: "Justin Trudeau"))
        quiz.append(Question(img: "LONDON", q: "Who Is Prime Miniter Of London", op1: "Theresa May", op2: "Harold Wilson", op3: "Boris", rightAns: "Boris"))
        quiz.append(Question(img: "PAKISTAN", q: "Who Is Prime Miniter Of Pakistan", op1: "Shehbaz", op2: "Imran Khan", op3: "Nawaz Sharif", rightAns: "Shehbaz"))
        
        
    }
}

