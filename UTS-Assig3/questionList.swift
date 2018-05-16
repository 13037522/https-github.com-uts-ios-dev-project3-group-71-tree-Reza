//
//  questionList.swift
//  UTS-Assig3
//
//  Created by Ian Zhou on 16/5/18.
//  Copyright © 2018 Asher. All rights reserved.
//

import Foundation

class QuestionList {
    static var questionList: [aQuestion]?
    
    static func getList() -> [aQuestion] {
        if questionList != nil {
            return questionList!
        }
        else {
            questionList = aQuestion.defaultQuestions()
            return questionList!
        }
    }
}
