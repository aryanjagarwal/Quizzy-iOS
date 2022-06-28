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
    
    let quiz = ["Four + two is equal to Six", "Five - Three is greater than one", "Three + Eight is less than ten"]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressesd(_ sender: UIButton) {
        
        questionNumber += 1
        updateUI()
    }
    
    func updateUI() {
        qusetionLabel.text = quiz[questionNumber]
        
    }
    
    
}

