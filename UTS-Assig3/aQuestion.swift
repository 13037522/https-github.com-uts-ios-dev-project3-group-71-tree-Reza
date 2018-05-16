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

    static func questionsFor() -> [aQuestion] {
        print("Finding questions only for")
        return QuestionList.defaultQuestions()
    }

}
