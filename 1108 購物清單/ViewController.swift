//
//  ViewController.swift
//  1108 購物清單
//
//  Created by 泳逸 李 on 2017/11/8.
//  Copyright © 2017年 yungyili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shoes1Label: UILabel!
    
    @IBOutlet weak var shoes2Label: UILabel!
    
    @IBOutlet weak var shoes3Label: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var shoes1Stepper: UIStepper!
    
    @IBOutlet weak var shoes2Stepper: UIStepper!
    
    @IBOutlet weak var shoes3Stepper: UIStepper!
    
    var shoes1Number = 0
    var shoes2Number = 0
    var shoes3Number = 0 
    
    @IBAction func shoes1Stepper(_ sender: UIStepper) {
        shoes1Number = Int(sender.value)
        shoes1Label.text = "\(shoes1Number)"
    }
    
    @IBAction func shoes2Stepper(_ sender: UIStepper) {
        shoes2Number = Int(sender.value)
        shoes2Label.text = "\(shoes2Number)"
    }
    
    @IBAction func shoes3Stepper(_ sender: UIStepper) {
        shoes3Number = Int(sender.value)
        shoes3Label.text = "\(shoes3Number)"
    }
    
    override var prefersStatusBarHidden:Bool{
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shoes1Label.text = "0"
        shoes2Label.text = "0"
        shoes3Label.text = "0"
        totalLabel.text = "0"
        
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        shoes1Label.text = "0"
        shoes2Label.text = "0"
        shoes3Label.text = "0"
        totalLabel.text = "0"
        shoes1Stepper.value = 0
        shoes2Stepper.value = 0
        shoes3Stepper.value = 0
        
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        var total = 0
        total = shoes1Number * 5750 + shoes2Number * 5219 + shoes3Number * 4750
        totalLabel.text = "\(total)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

