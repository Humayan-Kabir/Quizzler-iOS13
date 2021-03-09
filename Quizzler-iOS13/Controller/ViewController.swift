//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quesitonLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var quizProgress: UIProgressView!
    @IBOutlet weak var scoreBoard: UILabel!
    
    
    var quizBrain: QuizBrain = QuizBrain()
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    @IBAction func submitAnswer(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        quesitonLabel.text = quizBrain.getNextQuiz()
        quizProgress.progress = quizBrain.getProgress()
        scoreBoard.text = quizBrain.getScore()
        trueButton.backgroundColor = UIColor.magenta
        falseButton.backgroundColor = UIColor.magenta
    }
    
}

