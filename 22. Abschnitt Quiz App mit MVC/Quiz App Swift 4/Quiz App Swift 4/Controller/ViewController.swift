//
//  ViewController.swift
//  Quiz App Swift 4
//
//  Created by Christian on 04.05.18.
//  Copyright © 2018 Codingenieur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlet ...
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progessLabel: UILabel!
    @IBOutlet weak var progressBarView: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    // MARK: - Instanzvariable
    let allQestion = QuestionBank()
    var pickedAnswer: Bool = false // Ausgewählte Antwort
    var questionNumber: Int = 0 // Nummer der angezeigten Frage, default Wert ist 0 sprich die erste Fragen wird überprüft
    var score: Int = 0
    
    // MARK: - View lifecycle
    // Wird aufgerufen wenn der UIViewController in den Speicher geladen wurde
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        allQestion.list[0] // Zugriff auf die erste Frage
        let firstQuestion = allQestion.list[0]
        questionLabel.text = firstQuestion.questionText
    }

    // Wird aufgerufen wenn das System wenig Speicher zur Verfügung hat
    override func didReceiveMemoryWarning() {
        
    }
    
    
    // MARK: - Actions ...
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        // Üperprüft welche Button gedrückt wurde
//        print(sender)
        
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer() // Antwort überprüfen
        
        questionNumber = questionNumber + 1 // Hier passiert der Fehler, weil irgendwann die Grenze des Array erreicht ist
     
        nextQuestion()
    }
    
    // MARK: - Methods ...
    func updateUI() {
        // Update aller views z.B. progressBar, scoreLabel
        scoreLabel.text = "Score \(score)"
        progessLabel.text = "\(questionNumber + 1) / 10" // +1 wegen dem Array sonst wird 0-9 angezeigt
        
        progressBarView.frame.size.width = (self.view.frame.size.width / 10) * CGFloat(questionNumber + 1) // 10 weil es 10 Fragen gibt
        // questionNumber weil es dann 1, 2, 3, oder 4... ProgressBar Elemente geben wird
        // + 1 weil sonst zu Beginn kein progressBar angezeigt wird 
    }
    
    func nextQuestion() {
        // Zeigt die nächste Fragen an
        
        if questionNumber <= 9 { // 10 Fragen in der App
            questionLabel.text = allQestion.list[questionNumber].questionText // Immer die Fragen anzeigen zum übergebenden index
            updateUI()
        } else {
//            print("Quiz Ende")
            let alert = UIAlertController(title: "Glückwunsch!", message: "Willst du dieses Quiz neu starten?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Neustart" , style: .default, handler: { (UIAlertAction) in
                self.restart() // rufe die Methode restart auf nach dem beenden der App
            })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
           
        }
    }
    
    func checkAnswer() {
        // Üperprüfen der Antwort
        
        let correctAnswer = allQestion.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
//            print("Stimmt")
            score = score + 10 // score += 1 -> das gleiche
            ProgressHUD.showSuccess("Richtig!")
        } else {
//            print("Stimmt nicht")
            ProgressHUD.showError("Falsch")
        }
    }
    
    func restart() {
        // Zweite Chance
        questionNumber = 0
        score = 0
        nextQuestion()
    }
    
    

}

