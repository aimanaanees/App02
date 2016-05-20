//
//  ViewController.swift
//  App03(Guess_Number)
//
//  Created by Aiman Abdullah Anees on 18/05/16.
//  Copyright © 2016 Aiman Abdullah Anees. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let CorrectNumber = arc4random_uniform(5)
    
    @IBOutlet var MessageBox: UILabel!
    
    @IBOutlet var InputBox: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        print(CorrectNumber)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    @IBAction func Button(sender: AnyObject) {
        
        let guess = InputBox.text!
        
        let CorrectGuess = String(CorrectNumber)
        InputBox.text = ""
        
        
        if (guess == CorrectGuess)
        {
            MessageBox.text! = "Correct Answer"
            MessageBox.textColor! = UIColor.grayColor()
            
        }
    
        else
        {
            MessageBox.text! = "Wrong Answer, try again!"
            MessageBox.textColor! = UIColor.redColor()
            
        }
    
    
    }

    
    
    




}


