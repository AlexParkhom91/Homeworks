//
//  SquareViewController.swift
//  CatGame
//
//  Created by Александр Пархамович on 21.06.22.
//

import UIKit

class SquareViewController: UIViewController {
    
    
        
    let label1: UILabel = UILabel()
        let label2: UILabel = UILabel()
        let label3: UILabel = UILabel()
        let label4: UILabel = UILabel()
        let label5: UILabel = UILabel()
        let label6: UILabel = UILabel()
        let label7: UILabel = UILabel()
        let label8: UILabel = UILabel()

        public override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .orange
        }
        override public func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            label1.frame = CGRect(x: 20, y: 20, width: 180, height: 180)
            view.addSubview(label1)
            label1.backgroundColor = .blue
            label2.frame = CGRect(x: 20, y: 20, width: 180, height: 180)
            view.addSubview(label2)
            label2.backgroundColor = .darkGray
            label3.frame = CGRect(x: 20, y: 20, width: 180, height: 180)
            view.addSubview(label3)
            label3.backgroundColor = .red
            label4.frame = CGRect(x: 20, y: 20, width: 180, height: 180)
            view.addSubview(label4)
            label4.backgroundColor = .systemGreen
            label5.frame = CGRect(x: 20, y: 20, width: 180, height: 180)
            view.addSubview(label5)
            label5.backgroundColor = .black
            label6.frame = CGRect(x: 20, y: 20, width: 180, height: 180)
            view.addSubview(label6)
            label6.backgroundColor = .systemCyan
            label7.frame = CGRect(x: 20, y: 20, width: 180, height: 180)
            view.addSubview(label7)
            label7.backgroundColor = .brown
            label8.frame = CGRect(x: 20, y: 20, width: 180, height: 180)
            view.addSubview(label8)
            label8.backgroundColor = .white
        }
    override public func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .microseconds(800)) {
        self.label1.center = CGPoint(x: 110, y: 120)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .microseconds(100)){
        self.label2.center = CGPoint(x: 310, y: 120)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .microseconds(1300)) {
        self.label3.center = CGPoint(x: 110, y: 320)
        }
      DispatchQueue.main.asyncAfter(deadline: .now() + .microseconds(1700)){
        self.label4.center = CGPoint(x: 310, y: 320)
        }
       DispatchQueue.main.asyncAfter(deadline: .now() + .microseconds(300)) {
        self.label5.center = CGPoint(x: 110, y: 520)
    }
        DispatchQueue.main.asyncAfter(deadline: .now() + .microseconds(1900)) {
        self.label6.center = CGPoint(x: 310, y: 520)
    }
        DispatchQueue.main.asyncAfter(deadline: .now() + .microseconds(500)) {
        self.label7.center = CGPoint(x: 110, y: 720)
    }
        DispatchQueue.main.asyncAfter(deadline: .now() + .microseconds(1700)) {
        self.label8.center = CGPoint(x: 310, y: 720)
            }
    }
}
