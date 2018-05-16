//
//  Saves.swift
//  UTS-Assig3
//
//  Created by Ian Zhou on 16/5/18.
//  Copyright © 2018 Asher. All rights reserved.
//

import Foundation

// For saving user answers on questions
class Saves {
    static var instance: Saves?
    var answers: [[Bool]]
    
    private init() {
        answers = []
    }
    
    static func getInstance() -> Saves {
        if instance == nil {
            instance = Saves()
        }
        return instance!
    }
    
    // TODO: add default saves
    static func defaultSaves() -> [[Bool]]  {
        return []
    }
}
