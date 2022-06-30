//
//  ViewController.swift
//  Quizzy
//
//  Created by Aryan Jagarwal on 28/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var qusetionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["Four + two is equal to Six", "True"],
        ["Five - Three is greater than one", "True"],
        ["Three + Eight is less than ten", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressesd(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right")
        } else {
            print("False")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        updateUI()
        
    }
    
    func updateUI() {
        qusetionLabel.text = quiz[questionNumber][0]
        
    }
    
    
}

