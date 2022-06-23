//
//  ButtonViewController.swift
//  CatGame
//
//  Created by Александр Пархамович on 21.06.22.
//

import Foundation
import UIKit

public final class ButtonViewController: UIViewController {

private var movedButton1: UIButton = UIButton()
private var movedButton2: UIButton = UIButton()
private var movedButton3: UIButton = UIButton()
private var movedButton4: UIButton = UIButton()
    private var label1: UILabel = UILabel()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
    }
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        movedButton1.frame = CGRect(x: 20, y: 400, width: 50, height: 50)
        movedButton1.layer.cornerRadius = 25
        movedButton1.clipsToBounds = true
        movedButton2.frame = CGRect(x: 180, y: 750, width: 50, height: 50)
        movedButton2.layer.cornerRadius = 25
        movedButton2.clipsToBounds = true
        movedButton3.frame = CGRect(x: 180, y: 20, width: 50, height: 50)
        movedButton3.layer.cornerRadius = 25
        movedButton3.clipsToBounds = true
        movedButton4.frame = CGRect(x: 340, y: 400, width: 50, height: 50)
        movedButton4.layer.cornerRadius = 25
        movedButton4.clipsToBounds = true
        label1.frame = CGRect(x: 180, y: 400, width: 50, height: 50)
        label1.layer.cornerRadius = 25
        label1.clipsToBounds = true
        
        movedButton1.setTitle("left", for: .normal)
        movedButton2.setTitle("down", for: .normal)
        movedButton3.setTitle("up", for: .normal)
        movedButton4.setTitle("right", for: .normal)
      movedButton1.addTarget(self, action: #selector(moveButLeft), for: .touchUpInside)
        movedButton2.addTarget(self, action: #selector(moveButDown), for: .touchUpInside)
       movedButton3.addTarget(self, action: #selector(moveButUp), for: .touchUpInside)
       movedButton4.addTarget(self, action: #selector(moveButRight), for: .touchUpInside)
     
        view.addSubview(movedButton1)
        view.addSubview(movedButton2)
        view.addSubview(movedButton3)
        view.addSubview(movedButton4)
        view.addSubview(label1)
        
        movedButton1.backgroundColor = .red
        self.view.addSubview(movedButton1)
        movedButton2.backgroundColor = .red
        self.view.addSubview(movedButton2)
        movedButton3.backgroundColor = .red
       self.view.addSubview(movedButton2)
        movedButton4.backgroundColor = .red
       self.view.addSubview(movedButton4)
        label1.backgroundColor = .blue
        self.view.addSubview(label1)
        label1.center = view.center
    }
    

    override public func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }

    @objc func moveButLeft() {
           label1.frame = CGRect(x: 100, y: 400, width: 50, height: 50)
       }
    
    @objc func moveButUp() {
           label1.frame = CGRect(x: 180, y: 200, width: 50, height: 50)
       }
    @objc func moveButDown() {
           label1.frame = CGRect(x: 180, y: 600, width: 50, height: 50)
       }
    @objc func moveButRight() {
           label1.frame = CGRect(x: 250, y: 400, width: 50, height: 50)
       }
    
 

}
