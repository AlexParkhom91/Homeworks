//
//  ViewController.swift
//  AninationBall
//
//  Created by Александр Пархамович on 13.07.22.
//


import UIKit

class ViewController: UIViewController {
    
    let View = UIView()
    let Ball = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        
        
        View.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 400)
        View.center = view.center
        View.backgroundColor = .systemBlue
        view.addSubview(View)
        

        Ball.frame = CGRect(x: self.View.bounds.maxX / 2, y: View.bounds.minY , width: 80, height: 80)
        Ball.backgroundColor = .systemRed
        Ball.clipsToBounds = true
        Ball.layer.cornerRadius = 40
        View.addSubview(Ball)
        
        
        moveBall()
        
    }
    
    func moveBall() {
        UIView.animate(withDuration: 2, delay: 0, options: [.repeat, .autoreverse]){
            
            self.Ball.frame = CGRect(x: self.View.bounds.maxX / 2, y: self.View.bounds.maxY - 80, width: 80, height: 80)

        
        }
    }
}
