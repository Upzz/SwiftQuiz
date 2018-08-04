//
//  Answer.swift
//  Yuya Quiz
//
//  Created by UCode on 8/1/18.
//  Copyright © 2018 UCode. All rights reserved.
//

import Foundation

class Answer{
    var answerText:String;
    var isCorrect:Bool;
    
    init(_ answer:String, _ correct:Bool){
        answerText = answer
        isCorrect = correct
    }
}
