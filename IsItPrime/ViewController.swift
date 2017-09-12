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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerLabel.text = "Please enter a positive whole number"
        
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        if let userEntered = numberEntered.text {
            
            let userEntered = Int(userEntered)
            
            if let number = userEntered {
                
                var isPrime = true
                
                if number == 1 {
                    
                    isPrime =  false
                }
                
                var i = 2
                
                while i < number {
                    
                    if number % i == 0 {
                        
                        isPrime =  false
                        
                    }
                    
                    i += 1
                    
                }
                
                if isPrime {
                    answerLabel.text = "\(number) is prime!"
                } else {
                    answerLabel.text = "\(number) is not prime."
                }
                
            } else {
                answerLabel.text = "Please enter a positive whole number"
            }
            
        
        }
    }
}
        


