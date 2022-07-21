//
//  CircleControlViewController.swift
//  Circle
//
//  Created by Александр Пархамович on 4.07.22.
//

import Foundation
import UIKit

class CircleControlViewController: UIViewController {
    
    let areaBall = UIView()
    let ball = UIView ()
    
    let upButton = UIButton()
    let downButton = UIButton()
    let leftButton = UIButton()
    let rightButton = UIButton()
    
    let widthBall = 80
    let heightBall = 80

    var xBall = 120
    var yBall = 120
    
    let step = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemRed

// CREATE BALL AREA
        let widthBtn = 60
        let heightBtn = 60
        let widthArea = Int(view.bounds.width)
        let heightArea = Int(view.bounds.height) - (heightBtn * 5)
        areaBall.frame = CGRect(x: 0, y: 0, width: widthArea, height: heightArea)
        areaBall.backgroundColor = .systemGray3
        view.addSubview(areaBall)
       
        // CREATE BALL
        
        ball.frame = CGRect(x:xBall, y: yBall, width: widthBall, height: heightBall)
        ball.backgroundColor = .systemYellow
        ball.clipsToBounds = true
        ball.layer.cornerRadius = ball.bounds.height / 2
        areaBall.addSubview(ball)
        
/// CREATE BUTTONS
// Create swipeUP button, using -> tap and swipe up
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(moveUp))
        swipeUp.direction = .up
        upButton.addGestureRecognizer(swipeUp)
        let xUpBtn = (Int(view.bounds.width) / 2) - (widthBtn / 2)
        let yUpBtn = Int(view.bounds.height) - (heightBtn * 4)
        upButton.frame = CGRect(x: xUpBtn, y: yUpBtn, width: widthBtn, height: heightBtn)
        upButton.backgroundColor = .gray
        upButton.layer.cornerRadius = upButton.bounds.height / 2
        upButton.setTitle("UP", for: .normal)
        view.addSubview(upButton)
    
    
// Create swipeDown button, using -> tap and swipe downd
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(moveDown))
        swipeDown.direction = .down
        downButton.addGestureRecognizer(swipeDown)
        let xDownBtn = (Int(view.bounds.width) / 2) - (widthBtn / 2)
        let yDownBtn = Int(view.bounds.height) - (heightBtn * 2)
        downButton.frame = CGRect(x: xDownBtn, y: yDownBtn, width: widthBtn, height: heightBtn)
        downButton.backgroundColor = .gray
        downButton.layer.cornerRadius = downButton.bounds.height / 2
        downButton.setTitle("DOWN", for: .normal)
        view.addSubview(downButton)
  
// Create swipeLeft button, using -> tap and swipe up
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(moveLeft))
        swipeLeft.direction = .left
        leftButton.addGestureRecognizer(swipeLeft)
        let xLeftBtn = (Int(view.bounds.width) / 2) - widthBtn - (widthBtn / 2)
        let yLeftBtn = Int(view.bounds.height) - (heightBtn * 3)
        leftButton.frame = CGRect(x: xLeftBtn, y: yLeftBtn, width: widthBtn, height: heightBtn)
        leftButton.backgroundColor = .gray
        leftButton.layer.cornerRadius = leftButton.bounds.height / 2
        leftButton.setTitle("LEFT", for: .normal)
        view.addSubview(leftButton)
        
// Create swipeRight button, using -> tap and swipe up
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(moveRight))
        swipeRight.direction = .right
        rightButton.addGestureRecognizer(swipeRight)
        let xRightBtn = (Int(view.bounds.width) / 2) + widthBtn - (widthBtn / 2)
        let yRightBtn = Int(view.bounds.height) - (heightBtn * 3)
        rightButton.frame = CGRect(x: xRightBtn, y: yRightBtn, width: widthBtn, height: heightBtn)
        rightButton.backgroundColor = .gray
        rightButton.layer.cornerRadius = rightButton.bounds.height / 2
        rightButton.setTitle("RIGHT", for: .normal)
        view.addSubview(rightButton)
        
    }
// Functions ball movement
    
    @objc func moveUp() {
        
        if yBall > (Int(view.frame.minY) + step)  {
            
            yBall -= step
            
        }

        ball.frame = CGRect(x:xBall, y: yBall, width: widthBall, height: heightBall)
        
    }
    
    @objc func moveDown() {
        
        if yBall < ((Int(areaBall.frame.maxY) - (heightBall * 2) - step)) {
            
            yBall += step
            
        }

        ball.frame = CGRect(x:xBall, y: yBall, width: widthBall, height: heightBall)
    }
    @objc func moveLeft() {
        
        if xBall > (Int(areaBall.frame.minX) + step) {
            
            xBall -= step
            
        }

        ball.frame = CGRect(x:xBall, y: yBall, width: widthBall, height: heightBall)
    }
    @objc func moveRight() {
        
        if xBall < ((Int(areaBall.frame.maxX) - heightBall) - step)  {
                            
            xBall += step
            
        }
        
            ball.frame = CGRect(x: xBall, y: yBall, width: widthBall, height: heightBall)
    
    }
}



