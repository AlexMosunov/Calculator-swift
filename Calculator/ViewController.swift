//
//  ViewController.swift
//  Calculator
//
//  Created by Alex Mosunov on 11.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    
    var didFinishTypingNumber = true
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        for button in buttons {
            button.layer.masksToBounds = true
            button.layer.cornerRadius = button.frame.height / 2
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calcButtonTapped(_ sender: UIButton) {
        didFinishTypingNumber = true
    }
    
    
    @IBAction func numberButtonTapped(_ sender: UIButton) {
        
        if let numValue = sender.currentTitle {
            if didFinishTypingNumber {
                displayLabel.text = numValue
                didFinishTypingNumber = false
            } else {
                displayLabel.text! += numValue
            }
            
        }
        
        
        
    }
    
}

