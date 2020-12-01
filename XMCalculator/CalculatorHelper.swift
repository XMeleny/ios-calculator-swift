//
//  CalculatorHelper.swift
//  XMCalculator
//
//  Created by bytedance on 2020/12/1.
//  Copyright © 2020 zhuxiaomei. All rights reserved.
//

import Foundation

class CalculatorHelper{
    
    var controller:ViewController
    init(_ controller:ViewController) {
        self.controller = controller
    }
    
    // temp data
    var tempResult = 0
    var tempOperator=""
    
    // enum
    let opAdd="+"
    let opMinus="-"
    let opTimes="*"
    let opDivide="/"
    let opEqual="="
    let opAc="AC"
    
    enum op:String {
        case add="+"
    }
    
    public func onOperatorClick(op:String){
        switch op {
            case opAdd: doAdd()
            case opMinus: doMinus()
            case opTimes: doTimes()
            case opDivide: doDivide()
            case opEqual: doEqual()
            case opAc: doAc()
            default: break
        }
        
        setTempResult()
    }
    
    public func onNumberClick(number:Int){
        
    }
    
    private func doAdd(){
        tempOperator = opAdd
        tempResult+=getScreenResult()
    }
    
    private	func doMinus(){
        
    }
    
    private	func doTimes(){
        
    }
    
    private	func doDivide(){
        
    }
    
    private	func doEqual(){
        
    }
    
    private func getScreenResult()->Int{
        return 0
    }
    
    private func setTempResult(){
        
    }
    
    private	func doAc(){
        clearData()
        clearUI()
    }
    
    private func clearUI(){
        controller.clearScreen()
    }
    private func clearData(){
        tempResult = 0
        tempOperator=""
    }
}



