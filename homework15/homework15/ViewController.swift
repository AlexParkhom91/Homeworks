//
//  ViewController.swift
//  homework15
//
//  Created by Александр Пархамович on 26.07.22.
//

import UIKit

class ViewController: UIViewController {

    let backView = UIView()
    let clickButton = UIButton()
    let menuView = UIView()
    let menuButton = UIButton()
    let closeButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     //MARK: - creation background view
        
        view.addSubview(backView)
        backView.backgroundColor = .systemMint
        backView.translatesAutoresizingMaskIntoConstraints = false
        backView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        backView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        backView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        
       
        createClickButton()
        menuButtonAppearance()
        menuHamburgerLayout()
     
        
    }
}


extension ViewController{
    
    //MARK: - creation Enter button, aletr fuction working
    
    func createClickButton(){
        clickButton.backgroundColor = .purple
        clickButton.setTitle("Enter", for: .normal)
        clickButton.addTarget(self, action: #selector(alertButton), for: .touchUpInside)
        backView.addSubview(clickButton)
        clickButton.layer.cornerRadius = 25
        clickButton.translatesAutoresizingMaskIntoConstraints = false
        clickButton.centerXAnchor.constraint(equalTo: backView.centerXAnchor).isActive = true
        clickButton.centerYAnchor.constraint(equalTo: backView.centerYAnchor).isActive = true
        clickButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        clickButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc func alertButton(){
        alert()
    }
    
    // MARK: - Creation hamburgermenu buttons (menu open/menu closed)
    
    func menuButtonAppearance(){
         menuButton.backgroundColor = .systemRed
         menuButton.setTitle("menu", for: .normal)
         backView.addSubview(menuButton)
         menuButton.addTarget(self, action: #selector(showMenuHamburger), for: .touchUpInside)
         menuButton.layer.cornerRadius = 10
         menuButton.translatesAutoresizingMaskIntoConstraints = false
         menuButton.topAnchor.constraint(equalTo: backView.topAnchor,constant: 50).isActive = true
         menuButton.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 10).isActive = true
         menuButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
         menuButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
  
    }
    func closeButtonAppearance(){
        closeButton.backgroundColor = .systemRed
        closeButton.setTitle("close", for: .normal)
        menuView.addSubview(closeButton)
        closeButton.addTarget(self, action: #selector(closeMenuHamburger), for: .touchUpInside)
        closeButton.layer.cornerRadius = 10
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.topAnchor.constraint(equalTo: menuView.topAnchor,constant: 50).isActive = true
        closeButton.leadingAnchor.constraint(equalTo: menuView.leadingAnchor, constant: 500).isActive = true
        closeButton.widthAnchor.constraint(equalToConstant: 125).isActive = true
        closeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
  
    }
    
    //MARK: - creation of menuhamburger
    
    func menuHamburgerLayout(){
        view.addSubview(menuView)
        closeButtonAppearance()
        menuView.backgroundColor = .purple
        menuView.translatesAutoresizingMaskIntoConstraints = false
        menuView.topAnchor.constraint(equalTo: backView.topAnchor).isActive = true
        menuView.trailingAnchor.constraint(equalTo: backView.leadingAnchor).isActive = true
        menuView.widthAnchor.constraint(equalTo: backView.widthAnchor, constant: 300).isActive = true
        menuView.heightAnchor.constraint(equalTo: backView.heightAnchor).isActive = true
        
    }
    
    //MARK: - close/open menu functions
    
    @objc func showMenuHamburger(){
        menuView.layer.cornerRadius = 50
        backView.layer.opacity = 0.5
        let xCoordinate = menuView.bounds.width
        let originalTransform = menuView.transform
        let scaledTransform = originalTransform.scaledBy(x: 0.65, y: 1)
        let scaledAndtranslatedTransform = scaledTransform.translatedBy(x: xCoordinate , y: 0)
        
        UIView.animate(withDuration: 0)
       {
        self.menuView.transform = scaledAndtranslatedTransform
        }
    }
    
    @objc func closeMenuHamburger(){
        UIView.animate(withDuration: 0.5)
        {
        self.menuView.transform = self.view.transform
        }
        backView.layer.opacity = 1
    }
}
