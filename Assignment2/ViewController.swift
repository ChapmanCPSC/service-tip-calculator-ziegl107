//
//  ViewController.swift
//  Assignment2
//
//  Created by Ziegler, Kayla on 3/9/16.
//  Copyright © 2016 chapman university. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var scoreHold: UILabel!
    @IBOutlet weak var textPrice: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var errorEmpty: UILabel!
    var score = 1
    
    
    func allNums(check : String) -> Bool
    {
        let scan = NSScanner(string: check)
        scan.locale = NSLocale.currentLocale()
        return scan.scanDecimal(nil) && scan.atEnd
    }
    
    
    func roundTo(value:Double, places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return round(value * divisor) / divisor
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changedSlider(sender: UISlider) {
        score = Int(sender.value)
        self.scoreHold.text = "\(score)"
    }
    
    
    @IBAction func calculateTip(sender: AnyObject) {
        let x : Double
        let y : Double
        self.tipLabel.text = ""
        self.costLabel.text = ""
        
        if allNums(self.textPrice.text!) {
    
                self.errorEmpty.text = ""
                
                if(score==1 || score==2 || score==3){
                    x = Double(self.textPrice.text!)!
                    y = x * 0.1
                    self.tipLabel.text = "\(roundTo(y,places: 2))"
                    self.costLabel.text = "\(x + y)"
                }
                else if(score==4 || score==5){
                    x = Double(self.textPrice.text!)!
                    y = x * 0.13
                    self.tipLabel.text = "\(roundTo(y,places: 2))"
                    self.costLabel.text = "\(x + y)"
                }
                else if(score==6 || score==7){
                    x = Double(self.textPrice.text!)!
                    y = x * 0.15
                    self.tipLabel.text = "\(roundTo(y,places: 2))"
                    self.costLabel.text = "\(x + y)"
                }
                else if(score==8 || score==9){
                    x = Double(self.textPrice.text!)!
                    y = x * 0.2
                    self.tipLabel.text = "\(roundTo(y,places: 2))"
                    self.costLabel.text = "\(x + y)"
                }
                else {
                    x = Double(self.textPrice.text!)!
                    y = x * 0.25
                    self.tipLabel.text = "\(roundTo(y,places: 2))"
                    self.costLabel.text = "\(x + y)"
                }
                
        }
            
        else {
            self.errorEmpty.text = "Enter valid price"
        }

    
    }
    

    
    
    

}

