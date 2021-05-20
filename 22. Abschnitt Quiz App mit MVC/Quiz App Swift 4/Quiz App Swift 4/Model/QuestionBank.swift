//
//  QuestionBank.swift
//  Quiz App Swift 4
//
//  Created by Christian on 04.05.18.
//  Copyright © 2018 Codingenieur. All rights reserved.
//

import Foundation

// Hier werden die Fragen, Objekte der Klasse Question in einem Array abgelegt

class QuestionBank {
    
    // Properties (Eigenschaften) der Klasse
    var list = [Question]() // Speichern hier alle Fragen (Qeustion Objekte) ab
   
    // init
    init() {
        // Fragen Objekte
        let question1 = Question(text: "Ist die Erde rund?", correctAnswer: true)
        let question2 = Question(text: "In Deutschland gibt es 20 Bundesländer", correctAnswer: false)
        let question3 = Question(text: "Ist Frauen in Arizona gesetzlich verboten Hosen zu tragen?", correctAnswer: true)
        let question4 = Question(text: "Der größter Mann der Welt ist 2,47m", correctAnswer: true)
        let question5 = Question(text: "Der Blauwal ist das größte Tier aller Zeiten", correctAnswer: true)
        let question6 = Question(text: "Fische sind Säugetieren", correctAnswer: false)
        let question7 = Question(text: "Können Elefanten schwimmen", correctAnswer: true)
        let question8 = Question(text: "Ein Elefant kann fliegen", correctAnswer: false)
        let question9 = Question(text: "Albert Einstein wurde 80 Jahre alt", correctAnswer: false)
        let question10 = Question(text: "Die Welt besteht aus 8 Kontinenten", correctAnswer: false)
        
        // Fragen in das Array list hinzufügen
        list.append(question1)
        list.append(question2)
        list.append(question3)
        list.append(question4)
        list.append(question5)
        list.append(question6)
        list.append(question7)
        list.append(question8)
        list.append(question9)
        list.append(question10)
    }
    
    // Methoden
}
