//
//  ViewController.swift
//  SQUARE
//
//  Created by Александр Пархамович on 10.07.22.
//

import UIKit

class ViewController: UIViewController {

  
    var squareOne = UIView()
    var squareTwo = UIView()
    var squareThree = UIView()
    var squareFour = UIView()
    let ParamButton = UIButton()
    let HomePlaсeButton = UIButton()
    let HideButton = UIButton()
    let OpenButton = UIButton()
    let widthBtn = 80
    let heightBtn = 80
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        
    }
    public override func viewDidAppear(_ animated: Bool) {
             super.viewDidAppear(animated)

        let distance : CGFloat = 10
        let widhSquare = view.frame.width / 4
        let heightSquare = view.frame.height / 8
        
       // MARK: - Squares

        let xsquareOne = (view.frame.width / 2) - widhSquare - distance
        let ysquareOne = (view.frame.height / 2) - heightSquare - distance
          squareOne.frame = CGRect(x: xsquareOne, y: ysquareOne, width: widhSquare, height: heightSquare)
          squareOne.backgroundColor = .yellow
          view.addSubview(squareOne)
        
        let xsquareTwo = (view.frame.width / 2) + distance
        let ysquareTwo = (view.frame.height / 2) - heightSquare - distance
          squareTwo.frame = CGRect(x: xsquareTwo, y: ysquareTwo, width: widhSquare, height: heightSquare)
          squareTwo.backgroundColor = .brown
          view.addSubview(squareTwo)
        
        let xsquareThree = (view.frame.width / 2) - widhSquare - distance
        let ysquareThree = (view.frame.height / 2) + distance
          squareThree.frame = CGRect(x: xsquareThree, y: ysquareThree, width: widhSquare, height: heightSquare)
          squareThree.backgroundColor = .red
          view.addSubview(squareThree)
        
        let xsquareFour = (view.frame.width / 2) + distance
        let ysquareFour = (view.frame.height / 2) + distance
          squareFour.frame = CGRect(x: xsquareFour, y: ysquareFour, width: widhSquare, height: heightSquare)
          squareFour.backgroundColor = .purple
          view.addSubview(squareFour)
        
        // MARK:- Buttons
        
        let xCentrBtn = (Int(view.bounds.width) / 2) - (widthBtn / 2)
        let yCentrBtn = Int(view.bounds.height) - (heightBtn * 2)
           HideButton.frame = CGRect(x: xCentrBtn, y: yCentrBtn, width: widthBtn, height: heightBtn)
           HideButton.backgroundColor = .blue
           HideButton.layer.cornerRadius = HideButton.bounds.height / 2
           HideButton.addTarget(self, action: #selector(hideSquare), for: .touchUpInside)
           HideButton.setTitle("HIDE", for: .normal)
           view.addSubview(HideButton)
        let xdownBtn = (Int(view.bounds.width) / 2) - (widthBtn / 2)
        let ydownBtn = Int(view.bounds.height) - (heightBtn * 10) / 3
           OpenButton.frame = CGRect(x: xdownBtn, y: ydownBtn, width: widthBtn, height: heightBtn)
           OpenButton.backgroundColor = .blue
           OpenButton.layer.cornerRadius = OpenButton.bounds.height / 2
           OpenButton.addTarget(self, action: #selector(openSquare), for: .touchUpInside)
           OpenButton.setTitle("Open", for: .normal)
           view.addSubview(OpenButton)
        let xLeftBtn = (Int(view.bounds.width) / 2) - widthBtn - (widthBtn )
        let yLeftBtn = Int(view.bounds.height) - (heightBtn * 2)
           ParamButton.frame = CGRect(x: xLeftBtn, y: yLeftBtn, width: widthBtn, height: heightBtn)
           ParamButton.backgroundColor = .blue
           ParamButton.layer.cornerRadius = ParamButton.bounds.height / 2
           ParamButton.addTarget(self, action: #selector(params), for: .touchUpInside)
           ParamButton.setTitle("+/-", for: .normal)
           view.addSubview(ParamButton)
        let xRightBtn = (Int(view.bounds.width) / 2) + widthBtn
        let yRightBtn = Int(view.bounds.height) - (heightBtn * 2)
           HomePlaсeButton.frame = CGRect(x: xRightBtn, y: yRightBtn, width: widthBtn, height: heightBtn)
           HomePlaсeButton.backgroundColor = .blue
           HomePlaсeButton.layer.cornerRadius = HomePlaсeButton.bounds.height / 2
           HomePlaсeButton.addTarget(self, action: #selector(homePlace), for: .touchUpInside)
           HomePlaсeButton.setTitle("Home", for: .normal)
           view.addSubview(HomePlaсeButton)
        
     //square movement
        
   let moveSquareOne = UIPanGestureRecognizer(target:self, action: #selector(moveSquareOne))
        squareOne.addGestureRecognizer(moveSquareOne)
    let moveSquareTwo = UIPanGestureRecognizer(target:self, action: #selector(moveSquareTwo))
        squareTwo.addGestureRecognizer(moveSquareTwo)
    let moveSquareThree = UIPanGestureRecognizer(target:self, action: #selector(moveSquareThree))
       squareThree.addGestureRecognizer(moveSquareThree)
    let moveSquareFour = UIPanGestureRecognizer(target:self, action: #selector(moveSquareFour))
        squareFour.addGestureRecognizer(moveSquareFour)
        
       
    }
    // MARK: - Functoins
         // Open/hide function
    
    @objc func hideSquare() {
        squareOne.isHidden = true
        squareTwo.isHidden = true
        squareThree.isHidden = true
        squareFour.isHidden = true
}
    @objc func openSquare() {
        squareOne.isHidden = false
        squareTwo.isHidden = false
        squareThree.isHidden = false
        squareFour.isHidden = false
}

    @objc func params () {
          
    }
    
// Home place function
    
    @objc func homePlace(){
        let distance : CGFloat = 10
        let widhSquare = view.frame.width / 4
        let heightSquare = view.frame.height / 8
       
        let xsquareOne = (view.frame.width / 2) - widhSquare - distance
        let ysquareOne = (view.frame.height / 2) - heightSquare - distance
        squareOne.frame = CGRect(x: xsquareOne, y: ysquareOne, width: widhSquare, height: heightSquare)
        squareOne.backgroundColor = .yellow
        view.addSubview(squareOne)
        
        let xsquareTwo = (view.frame.width / 2) + distance
        let ysquareTwo = (view.frame.height / 2) - heightSquare - distance
        squareTwo.frame = CGRect(x: xsquareTwo, y: ysquareTwo, width: widhSquare, height: heightSquare)
        squareTwo.backgroundColor = .brown
        view.addSubview(squareTwo)
        
        let xsquareThree = (view.frame.width / 2) - widhSquare - distance
        let ysquareThree = (view.frame.height / 2) + distance
        squareThree.frame = CGRect(x: xsquareThree, y: ysquareThree, width: widhSquare, height: heightSquare)
        squareThree.backgroundColor = .red
        view.addSubview(squareThree)
        
        let xsquareFour = (view.frame.width / 2) + distance
        let ysquareFour = (view.frame.height / 2) + distance
        squareFour.frame = CGRect(x: xsquareFour, y: ysquareFour, width: widhSquare, height: heightSquare)
        squareFour.backgroundColor = .purple
        view.addSubview(squareFour)
    }
    
    // movement functions
    
@objc func moveSquareOne(recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .changed {
        let translation = recognizer.translation(in: self.view)
        let xsquareOne = squareOne.center.x + translation.x
        let ysquareOne = squareOne.center.y  + translation.y
        squareOne.center = CGPoint(x: xsquareOne, y: ysquareOne)
        recognizer.setTranslation(CGPoint.zero, in: self.view)
       } else if recognizer.state == .ended {
        }
    }
@objc func moveSquareTwo(recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .changed {
        let translation = recognizer.translation(in: self.view)
        let xsquareTwo = squareTwo.center.x + translation.x
        let ysquareTwo = squareTwo.center.y  + translation.y
        squareTwo.center = CGPoint(x: xsquareTwo, y: ysquareTwo)
        recognizer.setTranslation(CGPoint.zero, in: self.view)
       } else if recognizer.state == .ended {
       }
   }
@objc func moveSquareThree(recognizer: UIPanGestureRecognizer) {
        if recognizer.state == .changed {
        let translation = recognizer.translation(in: self.view)
        let xsquareThree = squareThree.center.x + translation.x
        let ysquareThree = squareThree.center.y  + translation.y
        squareThree.center = CGPoint(x: xsquareThree, y: ysquareThree)
        recognizer.setTranslation(CGPoint.zero, in: self.view)
       } else if recognizer.state == .ended {
        
        }
    }
@objc func moveSquareFour(recognizer: UIPanGestureRecognizer) {
         if recognizer.state == .changed {
         let translation = recognizer.translation(in: self.view)
         let xsquareFour = squareFour.center.x + translation.x
         let ysquareFour = squareFour.center.y  + translation.y
         squareFour.center = CGPoint(x: xsquareFour, y: ysquareFour)
         recognizer.setTranslation(CGPoint.zero, in: self.view)
       } else if recognizer.state == .ended {
             
        
       }
   }
}
