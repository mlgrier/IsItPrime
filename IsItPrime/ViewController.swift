//
//  ViewController.swift
//  IsItPrime
//
//  Created by Marco Grier on 9/11/17.
//  Copyright © 2017 Marco Grier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberEntered: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    var isPrime = true
    var number: Int?
    var i = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerLabel.text = "Please enter a positive whole number"
        
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        if let number = Int(numberEntered.text!) {
            
            if number == 1 {
                
                isPrime = false
                answerLabel.text = "\(number) is not prime"
                
            } else {
                
                while i < number {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                        answerLabel.text = "\(number) is not prime"
                        
                    } else {
                        
                        answerLabel.text = "\(number) is prime!"
                        
                    }
                    
                    
                }
                
                i += 1
            }
        }
    }
    
}

