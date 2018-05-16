//
//  theQuestionVC.swift
//  UTS-Assig3
//
//  Created by Asher on 11/5/18.
//  Copyright © 2018 Asher. All rights reserved.
//

import UIKit

class theQuestionVC: UIViewController {
    
    
    @IBOutlet weak var questionTitle: UILabel!
    @IBOutlet weak var theQuestion: UITextView!

    @IBOutlet weak var answerOne: UIButton!
    @IBOutlet weak var answerTwo: UIButton!
    @IBOutlet weak var answerThree: UIButton!
    @IBOutlet weak var answerFour: UIButton!

    @IBOutlet weak var correctAnswer: UILabel!
    @IBOutlet weak var answerCover: UIImageView!

    @IBOutlet weak var nextQuestionButton: UIButton!
    
    var thisQuestion: aQuestion?

    override func viewDidLoad() {
        if thisQuestion == nil {
            thisQuestion = QuestionList.randomQuestion()
        }
        questionTitle.text = thisQuestion!.qTitle
        theQuestion.text = thisQuestion!.question
        answerOne.setTitle(thisQuestion!.answers[0], for: .normal)
        answerTwo.setTitle(thisQuestion!.answers[1], for: .normal)
        answerThree.setTitle(thisQuestion!.answers[2], for: .normal)
        answerFour.setTitle(thisQuestion!.answers[3], for: .normal)
        correctAnswer.text = thisQuestion!.answers[(thisQuestion!.correctAnswer -  1)]
        print(thisQuestion!.answers[0])
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        nextQuestionButton.isHidden = false
        
        answerOne.isEnabled = false
        answerTwo.isEnabled = false
        answerThree.isEnabled = false
        answerFour.isEnabled = false
        
        answerCover.isHidden = true
        if sender.title(for: .normal) == thisQuestion!.answers[(thisQuestion!.correctAnswer -  1)] {
            correctAnswer.textColor = .green
        } else {
            correctAnswer.textColor = .red
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
