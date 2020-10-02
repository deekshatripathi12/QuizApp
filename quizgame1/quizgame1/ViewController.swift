//
//  ViewController.swift
//  quizgame1
//
//  Created by Deeksha Tripathi on 2019-07-18.
//  Copyright © 2019 Deeksha Tripathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let allQuestion = QuestionBook()
    var TrueButton:Bool = false
    var QuestionNumber:Int = 0
    var Score:Int = 0
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    
    @IBOutlet weak var ProgressView: UIProgressView!
    @IBOutlet weak var ProgressLabel: UILabel!
    
    
    
    
    
    

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        QuestionLabel.text = allQuestion.questions[QuestionNumber].questionText
    }
    
    
    @IBAction func TrueButton(_ sender: UIButton) {
    
    
    
    
    
    
    
        if sender.tag == 1
        {
            TrueButton = true
        
            
        }else if sender.tag == 2
        {
            TrueButton = false
        }
        CheckAnswer()
        nextQuestion()
        
    }
   
    
    func UpdateUI()
    {
        ProgressLabel.text = "Progress: \(QuestionNumber + 1)/20"
        Score += 1
        ScoreLabel.text = "Score: \(Score)"
        
    }
    
    func nextQuestion()
    {
        if QuestionNumber <= 20
        {
        QuestionNumber += 1
        QuestionLabel.text = allQuestion.questions[QuestionNumber].questionText
        } else {
            print("Quiz ends")
            QuestionLabel.text = "Time over"
            
            let alert = UIAlertController(title: "Thanks for playing", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"OK\" alert occured.")
             self.StartAgain()
            }))
            self.present(alert, animated: true, completion: nil)
            
           
            
            
        }
    }
    func CheckAnswer()
    {
        if TrueButton == allQuestion.questions[QuestionNumber].answer
        {
            ProgressHUD.showSuccess("Correct Answer")
            print("You are right")
            UpdateUI()
        }else
        {
            ProgressHUD.showError("Wrong Answer")
            print("You are wrong")
        }
    }
    
    func StartAgain()
    {
        
        QuestionNumber = 0
        ProgressLabel.text = "Progress: \(QuestionNumber + 1)/20"
        Score = 0
        ScoreLabel.text = "Score: \(Score)"
        QuestionLabel.text = allQuestion.questions[QuestionNumber].questionText
        
    }
    
    
    
    
    
}

    
        
        // Do any additional setup after loading the view.








