//
//  QuizViewController.swift
//  Yuya Quiz
//
//  Created by UCode on 8/1/18.
//  Copyright © 2018 UCode. All rights reserved.
//

import Foundation
import UIKit

class QuizViewController: UIViewController{
    var score:Int = 0
    var currentQuestion:Int = 0
    
    var questions:[Question] = [
        Question("How much does First Aid heals?", [Answer( "100", false), Answer("75", true), Answer("50", false), Answer("95", false)]),
        
        Question("What kind of ammo does AWM use?", [Answer( "7.62", false), Answer(".300", true), Answer(".45", false), Answer("5.56", false)]),
        
        Question("What gun is this?", [Answer( "QBZ", false), Answer("M416", false), Answer("M16A4", true), Answer("Scar-L", false)], UIImage(named: "Icon_weapon_M16A4.png")!),
        
        Question("Which weapon does the most damage?", [Answer( "AWM", true), Answer("Crossbow", false), Answer("SKS", false), Answer("AKM", false)])
        ]
    
    @IBOutlet var questionText:UILabel!
    @IBOutlet var answerAButton:UIButton!
    @IBOutlet var answerBButton:UIButton!
    @IBOutlet var answerCButton:UIButton!
    @IBOutlet var answerDButton:UIButton!
    @IBOutlet var questionImage:UIImageView!
    
    @IBAction func checkAnswer(sender:AnyObject){
        let question = questions[currentQuestion]
        if question.answers[sender.tag].isCorrect {
            score += 1
        }
        
        nextQuestion()
    }
    
    override func viewDidLoad(){
        showQuestion()
    }
    
    func nextQuestion(){
        currentQuestion += 1
        
        if currentQuestion >= questions.count {
            //go to score screen
            performSegue(withIdentifier: "scoreSegue", sender: self)
            
        } else{
            showQuestion()
        }
    }
    
    func showQuestion(){
        let question = questions[currentQuestion]
        questionText.text = question.questionText;
        questionText.sizeToFit()
        answerAButton.setTitle("A. \(question.answers[0].answerText)", for: UIControlState.normal)
        answerAButton.sizeToFit()
        answerBButton.setTitle("B. \(question.answers[1].answerText)", for: UIControlState.normal)
        answerBButton.sizeToFit()
        answerCButton.setTitle("C. \(question.answers[2].answerText)", for: UIControlState.normal)
        answerCButton.sizeToFit()
        answerDButton.setTitle("D. \(question.answers[3].answerText)", for: UIControlState.normal)
        answerDButton.sizeToFit()
        
        questionImage.image = question.image
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender: Any?){
        let scoreViewController = segue.destination as! ScoreViewController
        scoreViewController.score = score
        scoreViewController.numQuestions = questions.count
    }
}
