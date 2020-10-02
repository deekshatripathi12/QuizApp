//
//  Question.swift
//  quizgame1
//
//  Created by Deeksha Tripathi on 2019-07-22.
//  Copyright © 2019 Deeksha Tripathi. All rights reserved.
//

import Foundation

class Question
{
    var questionText:String
    var answer:Bool

    init(questionText:String,answer:Bool) {
        
        self.questionText = questionText
        self.answer = answer
        
    }
}


