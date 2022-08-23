//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var questionText: UILabel!
    
    
    @IBOutlet weak var option1: UIButton!
    
    @IBOutlet weak var option2: UIButton!
    
    @IBOutlet weak var option3: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    var questionNo : Int = 0
    var questionBrain = QuestionBrain()
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateQuestion()
    }
    

    @IBAction func answerButtonPressed(_ sender: UIButton) {
      
        //let userAnswer = sender.currentTitle
        //let correctAnswer = questionBrain.quiz[questionNo].correctAns
        
        if sender.currentTitle == questionBrain.quiz[questionNo].correctAns {
        
            
            sender.backgroundColor = UIColor.green
            score += 5
        } else {
            sender.backgroundColor = UIColor.red
            print("wrong")
        }
        
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
        
        
        if questionNo + 1 < questionBrain.quiz.count {
            questionNo = questionNo + 1
            
        } else {
            let alert = UIAlertController(title: "Do you want to start again", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "Restart", style: .default) { alertAction in
                self.questionNo = 0
                self.score = 0
                
            }
            present(action,animated: true)
        
        }
  
      
     
    }
    
    @objc func updateQuestion () {
        questionText.text = questionBrain.quiz[questionNo].question
        option1.setTitle(questionBrain.quiz[questionNo].option1, for: .normal)
        option2.setTitle(questionBrain.quiz[questionNo].option2, for: .normal)
        option3.setTitle(questionBrain.quiz[questionNo].option3, for: .normal)
       // selectedAnswer = questionBrain.quiz[questionNo].correctAns
        scoreLabel.text = String("Score : \(score)")
       
        Image.image = UIImage(named:(questionBrain.quiz[questionNo].questionImage))
        
        
        
        option1.backgroundColor = UIColor.clear
        option2.backgroundColor = UIColor.clear
        option3.backgroundColor = UIColor.clear
        
        progressBar.progress = Float(questionNo )  / Float (questionBrain.quiz.count - 1)
        
    }
    
    
}

