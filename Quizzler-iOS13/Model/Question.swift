//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Eddy Gonzalez on 8/18/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    // Properties
    let text: String
    let answer: [String]
    let rightAnswer: String
    
    init(q:String, a: [String], correctAnswer: String){
    text = q
    answer = a
    rightAnswer = correctAnswer
    }
}
