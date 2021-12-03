//
//  ViewController.swift
//  calculator
//
//  Created by Doolot on 10/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    var numberFromScreen:Double = 0;
    var firstNum:Double = 0
    var mathScign:Bool = false
    var operation:Int = 0
    
    
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func digits(_ sender: UIButton) {
        if mathScign == true {
            result.text = String(sender.tag)
            mathScign = false
        } else {
            result.text = result.text! + String(sender.tag)

        }
            numberFromScreen = Double(result.text!)!
    }
    
    
    
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 15 {
            firstNum = Double(result.text!)!
            
            if sender.tag == 11 { // Деление
                result.text = "/"
            }
            else if sender.tag == 12 { // Умножение
                result.text = "x"
            }
            else if sender.tag == 13 { // Вычитание
                result.text = "-"
            }
            else if sender.tag == 14 { // Прибавление
                result.text = "+"
            }
            if sender.tag == 16 {
                result.text = "-"
            }

            operation = sender.tag
            mathScign = true
        }
         else if sender.tag == 15 { //Равно
                if operation == 11 {
                    result.text = String(firstNum / numberFromScreen)
                }
                else if operation == 12 {
                        result.text = String(firstNum * numberFromScreen)
            }
                else if operation == 13 {
                        result.text = String(firstNum - numberFromScreen)
                }   else if operation == 14 {
                    result.text = String(firstNum + numberFromScreen)
            }
         }
                else if sender.tag == 10 {
                    result.text = ""
                    firstNum = 0
                    numberFromScreen = 0
                    operation = 0
          }
         }
            
    
       override func viewDidLoad() {
        super.viewDidLoad()
    }
}
