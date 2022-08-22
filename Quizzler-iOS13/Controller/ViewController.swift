//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var choice_1: UIButton!
    @IBOutlet weak var choice_2: UIButton!
    @IBOutlet weak var choice_3: UIButton!
    @IBOutlet weak var score: UILabel!
    
    var quizBrain = QuizBrain()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRigth = quizBrain.checkAnswer(userAnswer)
        
        
        if userGotItRigth{
            print("True!")
            sender.backgroundColor = UIColor.green
        } else {
            print("False!")
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        
        questionLabel.text = quizBrain.getQuestionText()
        choice_1.setTitle(quizBrain.getChoice_1(), for: .normal)
        choice_2.setTitle(quizBrain.getChoice_2(), for: .normal)
        choice_3.setTitle(quizBrain.getChoice_3(), for: .normal)
        progressBar.progress = quizBrain.getProgress()
        score.text = "Score: \(quizBrain.getScore())"
        choice_1.backgroundColor = UIColor.clear
        choice_2.backgroundColor = UIColor.clear
        choice_3.backgroundColor = UIColor.clear
        

    }
    
    }
    
