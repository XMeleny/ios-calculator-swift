//
//  CalculatorHelper.swift
//  XMCalculator
//
//  Created by bytedance on 2020/12/1.
//  Copyright © 2020 zhuxiaomei. All rights reserved.
//

import Foundation

class CalculatorHelper{
    var tempResult = 0
    
    public func onOperatorClick(op:String){
        switch op {
            case "+": doAdd()
            case "-": doMinus()
            case "*": doTimes()
            case "/": doDivide()
            case "=": doEqual()
            case "AC": doAc()
            default: break
        }
    }
    
    public func onNumberClick(number:Int){
        
    }
    
    private func doAdd(){
        
    }
    
    private	func doMinus(){
        
    }
    
    private	func doTimes(){
        
    }
    
    private	func doDivide(){
        
    }
    
    
    private	func doEqual(){
        
    }
    
    private	func doAc(){
        // clear ui
        // clear data
    }
}



