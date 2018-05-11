//
//  Question.swift
//  UTS-Assig3
//
//  Created by Asher on 10/5/18.
//  Copyright © 2018 Asher. All rights reserved.
//

import Foundation

struct aQuestion: Codable {
    var subjectID: Int = 999
    var qTitle: String = "Question Title"
    var qSet: String = "Quiz 3"
    var qDescription: String = "Description text"
    var question: String
    var answers: [String]
    var correctAnswer: Int

    static let DocumentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("questions").appendingPathExtension("plist")

    static func loadQuestions() -> [aQuestion]?  {
        guard let encodedHS = try? Data(contentsOf: ArchiveURL) else {return nil}
        let propertyListDecoder = PropertyListDecoder()
        return try? propertyListDecoder.decode(Array<aQuestion>.self, from: encodedHS)
    }
    static func saveQuestions(_ scores: [aQuestion]) {
        let propertyListEncoder = PropertyListEncoder()
        let encodedHS = try? propertyListEncoder.encode(scores)
        try? encodedHS?.write(to: ArchiveURL, options: .noFileProtection)
    }

    static func randomQuestion() -> aQuestion {
        let question10 = aQuestion(subjectID: 35406, qTitle:"Practice question 1", qSet: "iOS Swift Quiz 3", qDescription: "A description", question:  "How cool is Swift?", answers: ["somewhat","rather","very","extreamly"], correctAnswer: 4)
        return question10
    }
    static func questionsFor() -> [aQuestion] {
        print("Finding questions only for")
        return self.defaultQuestions()
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
        return [ question10, question11, question12, question13, question14, question15, question16, question17, question18, question19]
    }
}