//
//  CalEngine.swift
//  rpn-cal
//
//  Created by Achiel Tyberghien on 17/10/2024.
//

import Foundation

@Observable
class CalEngine{
    var stack: [Double] = []
    var tempNumb: String = ""
    var displayString: String = ""
    init() {
        
    }
    func addToTempString(value: Int){
        clearTempString()
        tempNumb = tempNumb + String(value)
        displayString = "\(tempNumb)" + displayString
    }
    
    func clearTempString(){
        let lengthtemp = String(tempNumb).count
        var i : Int = 0
        if(tempNumb != ""){
            while(i < lengthtemp){
                displayString.removeFirst()
                i += 1
            }
        }
        
    }
    
    func clearAll(){
        stack = []
        tempNumb = ""
        displayString = ""
    }
    
    func addNumberToStack(){
        stack.append(Double(tempNumb)!)
        displayString = "\n" + displayString
        tempNumb = ""
    }
    
    func showStack(){
        clearTempString()
        displayString = "\n" + "\(stack)" + "\n" + displayString
    }
    
    func oparate(change: String) {
        var getal1 = 0.0
        var getal2 = 0.0
        if(stack.count == 0){
            displayString = "\n" + "Not enough operands..." + "\n" + displayString
            tempNumb = ""
        }
        else if(stack.count == 1 && tempNumb == ""){
            displayString = "\n" + "Not enough operands..." + "\n" + displayString
            tempNumb = ""
        }
        else{
            if(tempNumb != ""){
                addNumberToStack()
            }
            getal1 = stack[stack.count - 2]
            getal2 = stack[stack.count - 1]
            stack.removeLast()
            stack.removeLast()

            switch change {
            case "/":
                displayString = "\n" + "\(getal1/getal2)" + "\n" + "/" + "\n" + displayString
                stack.append(getal1/getal2)
            
            case "X":
                displayString = "\n" + "\(getal1*getal2)" + "\n" + "X" + "\n" + displayString
                stack.append(getal1*getal2)
            
            case "-":
                displayString = "\n" + "\(getal1-getal2)" + "\n" + "-" + "\n" + displayString
                stack.append(getal1-getal2)
            
            case "+":
                displayString = "\n" + "\(getal1+getal2)" + "\n" + "+" + "\n" + displayString
                stack.append(getal1+getal2)
            
            default: displayString = "\n" + "Not enough operands..." + "\n" + displayString
            }
        }
    }
    
   
    
}
