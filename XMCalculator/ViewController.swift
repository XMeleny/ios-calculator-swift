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
    
    // data
    var calculatorHelper: CalculatorHelper?

    override func viewDidLoad() {
        super.viewDidLoad()
        calculatorHelper = CalculatorHelper(self)
    }
    
    @IBAction func numClick(_ sender: UIButton) {
        let clickText = sender.currentTitle!
        if(getScreenText()=="0"){
            setScreenText(text: clickText)
        }else{
            setScreenText(text: getScreenText()+clickText)
        }
    }
    
    
    @IBAction func opClick(_ sender: UIButton) {
        calculatorHelper?.onOperatorClick(op: sender.currentTitle!)
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

