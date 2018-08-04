//
//  Question.swift
//  Yuya Quiz
//
//  Created by UCode on 8/1/18.
//  Copyright © 2018 UCode. All rights reserved.
//

import Foundation
import UIKit

class Question{
    var questionText:String;
    var answers:[Answer]
    var image:UIImage!
    
    init(){
        questionText = ""
        answers = []
        image = nil
    }
    
    init(_ question:String, _ ans:[Answer]){
        questionText = question
        answers = ans
        image = nil
    }
    
    init(_ question:String, _ ans:[Answer], _ img:UIImage){
        questionText = question
        answers = ans
        image = img
    }
}
