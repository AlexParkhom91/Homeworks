//
//  ViewController.swift
//  Calculator
//
//  Created by Александр Пархамович on 9.07.22.
//

import UIKit

class ViewController: UIViewController {
    var firstNumber = 0
    var resultNumber = 0
    var currentOperations: Operation?
    enum Operation {
    case add, subtract, multiply, divide, persents
        }
   // buttons
    let buttonZero = UIButton()
    let buttonDecimal = UIButton()
    let buttonFinal = UIButton()
    let buttonOne = UIButton()
    let buttonTwo = UIButton()
    let buttonThree = UIButton()
    let buttonPlus = UIButton()
    let buttonFour = UIButton()
    let buttonFive = UIButton()
    let buttonSix = UIButton()
    let buttonMinus = UIButton()
    let buttonSeven = UIButton()
    let buttonEight = UIButton()
    let buttonNine = UIButton()
    let buttonMultiply = UIButton()
    let buttonDelete = UIButton()
    let buttonPlusMin = UIButton()
    let buttonPercent = UIButton()
    let buttonDivide = UIButton()
    var resultLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
       // buttons params
        view.backgroundColor = .black

    buttonZero.translatesAutoresizingMaskIntoConstraints = false
        buttonZero.backgroundColor = .gray
        buttonZero.setTitle("0",for: .normal)
        buttonZero.layer.cornerRadius = 47
        buttonZero.tag = 1
        view.addSubview(buttonZero)
        buttonZero.addTarget(self, action: #selector(zeroTap), for: .touchUpInside)
     
    buttonOne.translatesAutoresizingMaskIntoConstraints = false
        buttonOne.backgroundColor = .gray
        buttonOne.setTitle("1",for: .normal)
        buttonOne.layer.cornerRadius = 47
        buttonOne.tag = 2
        view.addSubview(buttonOne)
        buttonOne.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        
    buttonTwo.translatesAutoresizingMaskIntoConstraints = false
        buttonTwo.backgroundColor = .gray
        buttonTwo.setTitle("2",for: .normal)
        view.addSubview(buttonTwo)
        buttonTwo.tag = 3
        buttonTwo.layer.cornerRadius = 47
        buttonTwo.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        
    buttonThree.translatesAutoresizingMaskIntoConstraints = false
        buttonThree.backgroundColor = .gray
        buttonThree.setTitle("3",for: .normal)
        view.addSubview(buttonThree)
        buttonThree.tag = 4
        buttonThree.layer.cornerRadius = 47
        buttonThree.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        
    buttonFour.translatesAutoresizingMaskIntoConstraints = false
        buttonFour.backgroundColor = .gray
        buttonFour.setTitle("4",for: .normal)
        view.addSubview(buttonFour)
        buttonFour.tag = 5
        buttonFour.layer.cornerRadius = 47
        buttonFour.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        
    buttonFive.translatesAutoresizingMaskIntoConstraints = false
        buttonFive.backgroundColor = .gray
        buttonFive.setTitle("5",for: .normal)
        view.addSubview(buttonFive)
        buttonFive.tag = 6
        buttonFive.layer.cornerRadius = 47
        buttonFive.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        
    buttonSix.translatesAutoresizingMaskIntoConstraints = false
        buttonSix.backgroundColor = .gray
        buttonSix.setTitle("6",for: .normal)
        view.addSubview(buttonSix)
        buttonSix.tag = 7
        buttonSix.layer.cornerRadius = 47
        buttonSix.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        
    buttonSeven.translatesAutoresizingMaskIntoConstraints = false
        buttonSeven.backgroundColor = .gray
        buttonSeven.setTitle("7",for: .normal)
        view.addSubview(buttonSeven)
        buttonSeven.tag = 8
        buttonSeven.layer.cornerRadius = 47
        buttonSeven.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)

        
    buttonEight.translatesAutoresizingMaskIntoConstraints = false
        buttonEight.backgroundColor = .gray
        buttonEight.setTitle("8",for: .normal)
        view.addSubview(buttonEight)
        buttonEight.tag = 9
        buttonEight.layer.cornerRadius = 47
        buttonEight.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)

    buttonNine.translatesAutoresizingMaskIntoConstraints = false
        buttonNine.backgroundColor = .gray
        buttonNine.setTitle("9",for: .normal)
        view.addSubview(buttonNine)
        buttonNine.tag = 10
        buttonNine.layer.cornerRadius = 47
        buttonNine.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)

        
        buttonPlus.translatesAutoresizingMaskIntoConstraints = false
        buttonPlus.backgroundColor = .orange
        buttonPlus.setTitle("+",for: .normal)
        buttonPlus.layer.cornerRadius = 47
        view.addSubview(buttonPlus)
        buttonPlus.tag = 11
        buttonPlus.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        
        buttonMinus.translatesAutoresizingMaskIntoConstraints = false
        buttonMinus.backgroundColor = .orange
        buttonMinus.setTitle("-",for: .normal)
        buttonMinus.layer.cornerRadius = 47
        view.addSubview(buttonMinus)
        buttonMinus.tag = 12
        buttonMinus.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
         
        buttonMultiply.translatesAutoresizingMaskIntoConstraints = false
        buttonMultiply.backgroundColor = .orange
        buttonMultiply.setTitle("X",for: .normal)
        buttonMultiply.layer.cornerRadius = 47
        view.addSubview(buttonMultiply)
        buttonMultiply.tag = 13
        buttonMultiply.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
         
        buttonDelete.translatesAutoresizingMaskIntoConstraints = false
        buttonDelete.backgroundColor = .darkGray
        buttonDelete.setTitle("AC",for: .normal)
        buttonDelete.layer.cornerRadius = 47
        view.addSubview(buttonDelete)
        buttonDelete.addTarget(self, action: #selector(clearResult), for: .touchUpInside)
         
        buttonPlusMin.translatesAutoresizingMaskIntoConstraints = false
        buttonPlusMin.backgroundColor = .darkGray
        buttonPlusMin.setTitle("+/-",for: .normal)
        buttonPlusMin.layer.cornerRadius = 47
        //?
        view.addSubview(buttonPlusMin)
         
        buttonPercent.translatesAutoresizingMaskIntoConstraints = false
        buttonPercent.backgroundColor = .darkGray
        buttonPercent.setTitle("%",for: .normal)
        buttonPercent.layer.cornerRadius = 47
        buttonPercent.tag = 16
        view.addSubview(buttonPercent)
        buttonPercent.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        
        buttonDivide.translatesAutoresizingMaskIntoConstraints = false
        buttonDivide.backgroundColor = .orange
        buttonDivide.setTitle("/",for: .normal)
        buttonDivide.layer.cornerRadius = 47
        view.addSubview(buttonDivide)
        buttonDivide.tag = 14
        buttonDivide.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        
        buttonFinal.translatesAutoresizingMaskIntoConstraints = false
        buttonFinal.backgroundColor = .orange
        buttonFinal.setTitle("=",for: .normal)
        buttonFinal.layer.cornerRadius = 47
        buttonFinal.tag = 15
        view.addSubview(buttonFinal)
        buttonFinal.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        
        buttonDecimal.translatesAutoresizingMaskIntoConstraints = false
        buttonDecimal.backgroundColor = .gray
        buttonDecimal.setTitle(",",for: .normal)
        buttonDecimal.layer.cornerRadius = 47
        // ?
        view.addSubview(buttonDecimal)
        
         
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        resultLabel.backgroundColor = .black
        view.addSubview(resultLabel)
        resultLabel.text = "0"
        resultLabel.textColor = .white
        resultLabel.textAlignment = .right
        resultLabel.font = UIFont(name: "Helvetica", size: 50)
 
        constraintsButton()
     
    }
    // Tap buttonZero
    @objc func zeroTap (){
        if resultLabel.text != "0" {
                if let text = resultLabel.text {
                    resultLabel.text = "\(text)\(0)"
                   print("yes")
                }
            }
        }
    // Tap numbers 1...9
    @objc func numberPressed(_ sender: UIButton) {
            let tag = sender.tag - 1
            
            if resultLabel.text == "0" {
                resultLabel.text = "\(tag)"
            }
            else if let text = resultLabel.text {
                resultLabel.text = "\(text)\(tag)"
            }
        }
    // Tap buttonDelete(clear result)
    @objc func clearResult() {
            resultLabel.text = "0"
            currentOperations = nil
            firstNumber = 0
        }
    // Operators
    @objc func operationPressed(_ sender: UIButton) {
            let tag = sender.tag
            
            if let text = resultLabel.text, let value = Int(text), firstNumber == 0 {
                firstNumber = value
                resultLabel.text = "0"
            }
            
            if tag == 15 {
                if let operation = currentOperations {
                    var secondNumber = 0
                    if let text = resultLabel.text, let value = Int(text) {
                        secondNumber = value
                    }
                    
                    switch operation {
                    case .add:
                        
                        firstNumber = firstNumber + secondNumber
                        secondNumber = 0
                        resultLabel.text = "\(firstNumber)"
                        currentOperations = nil
                        firstNumber = 0
                        
                        break
                        
                    case .subtract:
                        firstNumber = firstNumber - secondNumber
                        secondNumber = 0
                        resultLabel.text = "\(firstNumber)"
                        currentOperations = nil
                        firstNumber = 0
                        
                        break
                        
                    case .multiply:
                        firstNumber = firstNumber * secondNumber
                        secondNumber = 0
                        resultLabel.text = "\(firstNumber)"
                        currentOperations = nil
                        firstNumber = 0
                        
                        break
                        
                    case .divide:
                        firstNumber = firstNumber / secondNumber
                        secondNumber = 0
                        resultLabel.text = "\(firstNumber)"
                        currentOperations = nil
                        firstNumber = 0
                        break
                        
                    case .persents:
                        firstNumber = firstNumber / 100
                        resultLabel.text = "\(firstNumber)"
                        currentOperations = nil
                        firstNumber = 0
                        break
                    }
                }
            }
            else if tag == 11 {
                currentOperations = .add
            }
            else if tag == 12 {
                currentOperations = .subtract
            }
            else if tag == 13 {
                currentOperations = .multiply
            }
            else if tag == 14 {
                currentOperations = .divide
            }
             else if tag == 16 {
                currentOperations = .persents
        }
        }
        
}

private extension ViewController {
    //MARK: - Button constraits array(ancors)
    func constraintsButton() {
        let constraintsOne = [
            // 0
        buttonZero.topAnchor.constraint(equalTo: view.topAnchor,constant: 700),
        buttonZero.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
        buttonZero.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210),
        buttonZero.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
          // 0,
        buttonDecimal.topAnchor.constraint(equalTo: view.topAnchor,constant: 700),
        buttonDecimal.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 210),
        buttonDecimal.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
        buttonDecimal.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
          // =
        buttonFinal.topAnchor.constraint(equalTo: view.topAnchor,constant: 700),
        buttonFinal.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 310),
        buttonFinal.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
        buttonFinal.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
          // 1
        buttonOne.topAnchor.constraint(equalTo: view.topAnchor,constant: 600),
        buttonOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
        buttonOne.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -310),
        buttonOne.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
          // 2
        buttonTwo.topAnchor.constraint(equalTo: view.topAnchor,constant: 600),
        buttonTwo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110),
        buttonTwo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210),
        buttonTwo.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
          // 3
        buttonThree.topAnchor.constraint(equalTo: view.topAnchor,constant: 600),
        buttonThree.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 210),
        buttonThree.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
        buttonThree.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
          // +
        buttonPlus.topAnchor.constraint(equalTo: view.topAnchor,constant: 600),
        buttonPlus.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 310),
        buttonPlus.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
        buttonPlus.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
          // 4
        buttonFour.topAnchor.constraint(equalTo: view.topAnchor,constant: 500),
        buttonFour.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
        buttonFour.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -310),
        buttonFour.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300),
          // 5
        buttonFive.topAnchor.constraint(equalTo: view.topAnchor,constant: 500),
        buttonFive.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110),
        buttonFive.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210),
        buttonFive.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300),
          // 6
        buttonSix.topAnchor.constraint(equalTo: view.topAnchor,constant: 500),
        buttonSix.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 210),
        buttonSix.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
        buttonSix.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300),
          // -
        buttonMinus.topAnchor.constraint(equalTo: view.topAnchor,constant: 500),
        buttonMinus.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 310),
        buttonMinus.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
        buttonMinus.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300),
          // 7
        buttonSeven.topAnchor.constraint(equalTo: view.topAnchor,constant: 400),
        buttonSeven.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
        buttonSeven.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -310),
        buttonSeven.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400),
          // 8
        buttonEight.topAnchor.constraint(equalTo: view.topAnchor,constant: 400),
        buttonEight.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110),
        buttonEight.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210),
        buttonEight.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400),
          // 9
        buttonNine.topAnchor.constraint(equalTo: view.topAnchor,constant: 400),
        buttonNine.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 210),
        buttonNine.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
        buttonNine.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400),
          // X
        buttonMultiply.topAnchor.constraint(equalTo: view.topAnchor,constant: 400),
        buttonMultiply.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 310),
        buttonMultiply.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
        buttonMultiply.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400),
          // deldete
        buttonDelete.topAnchor.constraint(equalTo: view.topAnchor,constant: 300),
        buttonDelete.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
        buttonDelete.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -310),
        buttonDelete.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
          // +/-
        buttonPlusMin.topAnchor.constraint(equalTo: view.topAnchor,constant: 300),
        buttonPlusMin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110),
        buttonPlusMin.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210),
        buttonPlusMin.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
          // %
        buttonPercent.topAnchor.constraint(equalTo: view.topAnchor,constant: 300),
        buttonPercent.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 210),
        buttonPercent.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
        buttonPercent.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
          // /
        buttonDivide.topAnchor.constraint(equalTo: view.topAnchor,constant: 300),
        buttonDivide.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 310),
        buttonDivide.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
        buttonDivide.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
        // label
        resultLabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 50),
        resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
        resultLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
        resultLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -600),
        ]
        NSLayoutConstraint.activate(constraintsOne)
    
        
    } }
