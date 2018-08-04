//
//  ScoreViewController.swift
//  Yuya Quiz
//
//  Created by UCode on 8/4/18.
//  Copyright © 2018 UCode. All rights reserved.
//

import Foundation
import UIKit

class ScoreViewController: UIViewController{
    var score:Int = 0;
    var numQuestions:Int = 0;
    
    @IBOutlet var scoreLabel:UILabel!
    
    override func viewDidLoad() {
        scoreLabel.text = "Score:\n \(score)/\(numQuestions)"
        scoreLabel.sizeToFit()
    }
    
}
