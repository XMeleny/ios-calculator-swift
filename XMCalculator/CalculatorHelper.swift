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
    
    public func onNumClick(num:Int){
        
    }
    
    public func onOperatorClick(op:String){
        if(op==opAc){
            tempResult=0
            tempOperator=""
            controller.clearScreen()
        }else{
            calculateResultWithLastOp()
            tempOperator=op
            controller.setScreenText(text: String(tempResult))
        }
    }
    
    private func calculateResultWithLastOp(){
        switch tempOperator {
            case opAdd:
                tempResult+=getScreenResult()
            case opMinus:
                tempResult-=getScreenResult()
            case opTimes:
                tempResult*=getScreenResult()
            case opDivide:
                tempResult/=getScreenResult()
            default:
                tempResult = getScreenResult()
        }
    }
    
    private func getScreenResult()->Int{
        let ret = Int(controller.getScreenText())!
        //        print(ret)
        return ret
    }
}



