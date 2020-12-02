//
//  ViewController.swift
//  XMCalculator
//
//  Created by bytedance on 2020/12/1.
//  Copyright © 2020 zhuxiaomei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // ui
    @IBOutlet weak var screen: UILabel!
    @IBOutlet weak var opScreen:UILabel!
    
    // data
    var calculatorHelper: CalculatorHelper?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatorHelper = CalculatorHelper(self)
    }
    
    var shouldClearScreen=false
    var lastClickOp=false
    @IBAction func numClick(_ sender: UIButton) {
        let clickText = sender.currentTitle!
        if(getScreenText()=="0"||shouldClearScreen){
            setScreenText(text: clickText)
        }else{
            setScreenText(text: getScreenText()+clickText)
        }
        shouldClearScreen=false
        lastClickOp=false
    }
    
    @IBAction func opClick(_ sender: UIButton) {
        let op = sender.currentTitle!
        
        if(op == "AC" || op == "="){
            calculatorHelper?.onOperatorClick(op: op)
            lastClickOp=false
        }else {
            if(!lastClickOp){
                calculatorHelper?.onOperatorClick(op: op)
                lastClickOp=true
            }
        }
        shouldClearScreen=true
    }
    
    public func getScreenText()->String{
        return screen.text!
    }
    
    public func setScreenText(text:String){
        screen.text = text
    }
    
    public func clearScreen(){
        screen.text = "0"
    }
}

