//
//  ViewController.swift
//  calculator
//
//  Created by Francesca Bueti on 2/6/18.
//  Copyright © 2018 Francesca Bueti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNum = 0.0;
    var secondNum = 0.0;
    var operation = "";
    var clear = false;
    
    @IBOutlet weak var top: UILabel!
    @IBAction func clear(_ sender: Any) {
        top.text = "0"
    }
    
    @IBAction func seven(_ sender: Any) {
        if (top.text == "0" || clear){
            top.text = "7"
            clear = false
        }
        else{
            top.text = top.text! + "7"
        }
    }
    
    @IBAction func eight(_ sender: Any) {
        if (top.text == "0" || clear){
            top.text = "8"
            clear = false
        }
        else{
            top.text = top.text! + "8"
        }
    }
    
    @IBAction func nine(_ sender: Any) {
        if (top.text == "0" || clear){
            top.text = "9"
            clear = false
        }
        else{
            top.text = top.text! + "9"
        }
    }
    
    @IBAction func four(_ sender: Any) {
        if (top.text == "0" || clear){
            top.text = "4"
            clear = false
        }
        else{
            top.text = top.text! + "4"
        }
    }
    
    @IBAction func five(_ sender: Any) {
        if (top.text == "0" || clear){
            top.text = "5"
            clear = false
        }
        else{
            top.text = top.text! + "5"
        }
    }
    
    @IBAction func six(_ sender: Any) {
        if (top.text == "0" || clear){
            top.text = "6"
            clear = false
        }
        else{
            top.text = top.text! + "6"
        }
    }
  
    @IBAction func one(_ sender: Any) {
        if (top.text == "0" || clear){
            top.text = "1"
            clear = false
        }
        else{
            top.text = top.text! + "1"
        }
    }
    
    @IBAction func two(_ sender: Any) {
        if (top.text == "0" || clear){
            top.text = "2"
            clear = false
        }
        else{
            top.text = top.text! + "2"
        }
    }
    
    @IBAction func three(_ sender: Any) {
        if (top.text == "0" || clear){
            top.text = "3"
            clear = false
        }
        else{
            top.text = top.text! + "3"
        }
    }
    
    @IBAction func zero(_ sender: Any) {
        if (top.text == "0" || clear){
            top.text = "0"
            clear = false
        }
        else{
            top.text = top.text! + "0"
        }
    }
    
    @IBAction func plus(_ sender: Any) {
        firstNum = (top.text! as NSString).doubleValue
        operation = "+"
        clear = true;
    }
    
    @IBAction func multiply(_ sender: Any) {
        firstNum = (top.text! as NSString).doubleValue
        operation = "*"
        clear = true;
    }
    
    @IBAction func minus(_ sender: Any) {
        firstNum = (top.text! as NSString).doubleValue
        operation = "-"
        clear = true;
    }
    
    @IBAction func divide(_ sender: Any) {
        firstNum = (top.text! as NSString).doubleValue
        operation = "/"
        clear = true;
    }
    
    @IBAction func percent(_ sender: Any) {
         top.text = String((top.text! as NSString).floatValue/100)
    }
    
    @IBAction func invert(_ sender: Any) {
        top.text = String((top.text! as NSString).floatValue * -1)
    }
    
    @IBAction func decimal(_ sender: Any) {
        top.text = top.text! + "."
    }
    
    @IBAction func equals(_ sender: Any) {
        secondNum = (top.text! as NSString).doubleValue
        if(operation == "+"){
            top.text = String(firstNum + secondNum)
        }
        if(operation == "-"){
            top.text = String(firstNum - secondNum)
        }
        if(operation == "*"){
            top.text = String(firstNum * secondNum)
        }
        if(operation == "/"){
            top.text = String(firstNum / secondNum)
        }
        operation = ""
        firstNum = 0
        secondNum = 0
        clear = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

