//
//  Question.swift
//  Quiz App Swift 4
//
//  Created by Christian on 04.05.18.
//  Copyright © 2018 Codingenieur. All rights reserved.
//

import Foundation

// Aus dieser Klasse erstellen wir Fragen (Objekte)

class Question {
    
    // Properties (Eigenschaften) der Klasse
    let questionText: String
    let answer: Bool
    
    // init
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
