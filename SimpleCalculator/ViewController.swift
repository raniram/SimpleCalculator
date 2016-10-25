//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Sujata on 20/10/16.
//  Copyright © 2016 Sujata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isTypingNumber = false
    var firstNumber = 0
    var secondNumber = 0
    var operation = ""

    @IBOutlet weak var calculatorDisplay: UILabel!
    @IBAction func numberTapped(sender: AnyObject) {
        
        let number = sender.currentTitle
        
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else {
            calculatorDisplay.text = number
            isTypingNumber = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculationTapped(sender: AnyObject) {
        
        isTypingNumber = false
        secondNumber = Int(calculatorDisplay.text!)!
        operation = sender.currentTitle!!
        if operation == "+" {
            firstNumber += secondNumber
        } else if operation == "-" {
            firstNumber -= secondNumber
        }
        
    }

    @IBAction func equalTapped(sender: AnyObject) {
        
        isTypingNumber = false
        var result = 0
        secondNumber = Int(calculatorDisplay.text!)!
        
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        }
        
        calculatorDisplay.text = "\(result)"
        firstNumber=0
        secondNumber=0
    }
}

