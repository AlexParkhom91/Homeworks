//
//  SquareViewController.swift
//  CatGame
//
//  Created by Александр Пархамович on 21.06.22.
//

import UIKit

class SquareViewController: UIViewController {
    
        var SquareButton: UIButton = UIButton()
    var Square: UILabel = UILabel()
       
       override func viewDidLoad() {
           super.viewDidLoad()
           view.backgroundColor = randomColor()
       }
       
       override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           
           // Button
           let widthBtn = 100
           let heightBtn = 100
           let xBtn = (Int(view.bounds.width) / 2) - (widthBtn / 2)
           let yBtn = Int(view.bounds.height) - (heightBtn * 2)
           
           SquareButton.frame = CGRect(x: xBtn, y: yBtn, width: widthBtn, height: heightBtn)
           SquareButton.backgroundColor = randomColor()
           SquareButton.layer.cornerRadius = SquareButton.bounds.height / 2
           SquareButton.clipsToBounds = true
           SquareButton.addTarget(self, action: #selector(createFieldSquares), for: .touchUpInside)
           SquareButton.setTitle("Squares", for: .normal)
           
           view.addSubview(SquareButton)
           
       }
       /// Creating field for Squares
       @objc func createFieldSquares() {
           
           let columnsCount = 3
           
           let widthSquare = Int(view.bounds.width) / columnsCount
           let heightSquare = widthSquare
           let rowsCount = Int((Int(view.bounds.height) - 200) / heightSquare)
           
           var x = 0
           var y = 0
           
           for _ in 1...(columnsCount * rowsCount) {
               
               let Square: UIView = UIView()
               Square.frame = CGRect(x: x, y: y, width: widthSquare, height: heightSquare)
    
               Square.backgroundColor = randomColor()
               x += widthSquare
               
               if x >= Int(view.bounds.width) {
                   x = 0
                   y += heightSquare
               }
               view.addSubview(Square)
               
           }
           
       }
    func randomColor() -> UIColor {
        switch Int.random(in: 1...8) {
        case 1: return UIColor.red
        case 2: return UIColor.systemCyan
        case 3: return UIColor.orange
        case 4: return UIColor.brown
        case 5: return UIColor.blue
        case 6: return UIColor.systemFill
        case 7: return UIColor.systemMint
        case 8: return UIColor.yellow
        default: return UIColor.systemRed
        }
    }
    
}


