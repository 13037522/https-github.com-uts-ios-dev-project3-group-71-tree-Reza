//
//  questionList.swift
//  UTS-Assig3
//
//  Created by Ian Zhou on 16/5/18.
//  Copyright © 2018 Asher. All rights reserved.
//

import Foundation

class QuestionList {
    static var instance: QuestionList?
    
    var questionList: [aQuestion]
    
    private init() {
        questionList = QuestionList.defaultQuestions()
    }
    
    static func getInstance() -> QuestionList {
        if instance != nil {
            return instance!
        }
        else {
            instance = QuestionList()
            return instance!
        }
    }
    
    static func randomQuestion() -> aQuestion {
        var defaultQuestion = aQuestion(subjectID: 35406, qTitle:"Practice question 1", qSet: "iOS Swift Quiz 3", qDescription: "A description", question:  "How cool is Swift?", answers: ["somewhat","rather","very","extreamly"], correctAnswer: 4)
        
        if instance == nil {
            instance = QuestionList()
        }
        
        let randomIndex = Int(arc4random_uniform(UInt32(instance!.questionList.count)))
        
        defaultQuestion = instance!.questionList[randomIndex]

        return defaultQuestion
    }
    
    static func defaultQuestions() -> [aQuestion] {
        let question10 = aQuestion(subjectID: 35406, qTitle:"Practice question 1", qSet: "iOS Swift Quiz 3", qDescription: "A description", question:  "How cool is Swift?", answers: ["somewhat","rather","very","extreamly"], correctAnswer: 4)
        let question11 = aQuestion(subjectID: 35406, qTitle:"Practice question 2", qSet: "iOS Swift Quiz 3", qDescription: "A description", question:  "How AMAZING is Swift?", answers: ["somewhat","rather","very","extreamly"], correctAnswer: 4)
        let question12 = aQuestion(subjectID: 35406, qTitle:"Practice question 3", qSet: "iOS Swift Quiz 3", qDescription: "A description", question:  "How SHIT is Swift?", answers: ["somewhat","rather","very","extreamly"], correctAnswer: 4)
        let question13 = aQuestion(subjectID: 35406, qTitle:"Practice question 4", qSet: "iOS Swift Quiz 3", qDescription: "A description", question:  "How cool is ASH?", answers: ["somewhat","rather","very","extreamly"], correctAnswer: 4)
        let question14 = aQuestion(subjectID: 35406, qTitle:"Practice question 5", qSet: "iOS Swift Quiz 3", qDescription: "A description", question:  "How cool is IAN?", answers: ["somewhat","rather","very","extreamly"], correctAnswer: 4)
        let question15 = aQuestion(subjectID: 35406, qTitle:"Practice question 6", qSet: "iOS Swift Quiz 3", qDescription: "A description", question:  "How cool is REZ?", answers: ["somewhat","rather","very","extreamly"], correctAnswer: 4)
        let question16 = aQuestion(subjectID: 35406, qTitle:"Practice question 7", qSet: "iOS Swift Quiz 3", qDescription: "A description", question:  "How cool is TEACH?", answers: ["somewhat","rather","very","extreamly"], correctAnswer: 4)
        let question17 = aQuestion(subjectID: 35406, qTitle:"This Title", qSet: "iOS Swift Quiz 3", qDescription: "A description", question:  "How cool is LECT?", answers: ["somewhat","rather","very","extreamly"], correctAnswer: 4)
        let question18 = aQuestion(subjectID: 35406, qTitle:"This Title", qSet: "iOS Swift Quiz 3", qDescription: "A description", question:  "How cool is MIKE?", answers: ["somewhat","rather","very","extreamly"], correctAnswer: 1)
        let question19 = aQuestion(subjectID: 35406, qTitle:"This Title", qSet: "iOS Swift Quiz 3", qDescription: "A description", question:  "How cool is James Bond?", answers: ["somewhat","rather","very","extreamly"], correctAnswer: 3)
        let question20 = aQuestion(subjectID: 23709, qTitle: "Practice Question 1", qSet: "Economics Quiz 1", qDescription: "A Description", question: "To compute GDP:", answers: ["Simply sum the number of final goods and services.", "Sum the market values of final goods and services.", "Use a weighted average by a survey regarding how much people value different goods and services.", "Sum the cost of producing final goods and services."], correctAnswer: 2)
        let question21 = aQuestion(subjectID: 23709, qTitle: "Practice Question 2", qSet: "Economics Quiz 1", qDescription: "A Description", question: "In a circular-flow diagram, total income and total expenditures in an economy are:", answers: ["Equal only if there is no saving.", "Always equal because some people's income is not for production", "Equal because firms are ultimately owned by households.", "Equal because every transaction has a buyer and a seller."], correctAnswer: 4)
        let question22 = aQuestion(subjectID: 23709, qTitle: "Practice Question 3", qSet: "Economics Quiz 1", qDescription: "A Description", question: "The payments to the factors of production are:", answers: ["rent and interest.", "rent.", "wages.", "wages, rent, interest, and profits."], correctAnswer: 4)
        let question23 = aQuestion(subjectID: 23709, qTitle: "Practice Question 4", qSet: "Economics Quiz 1", qDescription: "A Description", question: "Over time Australian have chosen to cook less at home and dine out more. This change in behaviour:", answers: ["does not affect GDP.", "increases GDP.", "reduces GDP.", "none of the above"], correctAnswer: 2)
        let question24 = aQuestion(subjectID: 23709, qTitle: "Practice Question 5", qSet: "Economics Quiz 1", qDescription: "A Description", question: "The value of currently produced final goods and services measured in current year prices is called:", answers: ["imputed values.", "real GDP.", "inflation.", "nominal GDP."], correctAnswer: 4)
        let question25 = aQuestion(subjectID: 23709, qTitle: "Practice Question 6", qSet: "Economics Quiz 1", qDescription: "A Description", question: "The largest component of national income is:", answers: ["compensation of employees", "corporate profits", "rental income", "proprietor's income"], correctAnswer: 1)
        let question26 = aQuestion(subjectID: 23709, qTitle: "Practice Question 7", qSet: "Economics Quiz 1", qDescription: "A Description", question: "In year one, the GDP deflator is 100 and in year two 110. If nominal GDP in year two is $300 billion, what is real GDP for year two?", answers: ["$100 billion.", "$220 billion.", "$200 billion.", "$272.73 billion."], correctAnswer: 4)
        let question27 = aQuestion(subjectID: 23709, qTitle: "Practice Question 8", qSet: "Economics Quiz 1", qDescription: "A Description", question: "Compared to the GDP deflator, the consumer price index measures:", answers: ["the price of exported goods and services", "the price of a fixed market basket of goods and services.", "the price of all the goods and services produced in the economy.", "the price of wholesale goods and services."], correctAnswer: 2)
        let question28 = aQuestion(subjectID: 23709, qTitle: "Practice Question 9", qSet: "Economics Quiz 1", qDescription: "A Description", question: "The labour force is 100 million and the unemployment rate is 5 percent. One million people quit looking for a job. What is it called when an individual leaves the labour force? What is the new unemployment rate?", answers: ["Discouraged worker, 4.04 percent.", "Encouraged worker, 5 percent.", "Discouraged worker, 3 percent.", "Discouraged worker, 5.05 percent."], correctAnswer: 1)
        let question29 = aQuestion(subjectID: 23709, qTitle: "Practice Question 10", qSet: "Economics Quiz 1", qDescription: "A Description", question: "The natural rate of unemployment is also called:", answers: ["accelerating deflation rate of unemployment.", "accelerating inflation rate of unemployment.", "non-accelerating inflation rate of unemployment.", "none of the above."], correctAnswer: 3)
        return [ question10, question11, question12, question13, question14, question15, question16, question17, question18, question19, question20, question21, question22, question23, question24, question25, question26, question27, question28, question29]
    }
}
