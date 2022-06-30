//
//  ViewController.swift
//  dz7
//
//  Created by Александр Пархамович on 29.06.22.
//

import UIKit

class HockeyStickClass {
    var StickName: String
    var SlickModel: String
    var StickSide: String
    
init(StickName: String, SlickModel: String, StickSide: String) {
        self.StickName = StickName
        self.SlickModel = SlickModel
        self.StickSide = StickSide
    }

}

let objectOfClass = HockeyStickClass(StickName: "Bauer", SlickModel: "Supreme 1S", StickSide: "LeftSide")

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
       
    }
    @IBAction func showSecondViewController(){
        
        let SecondStoryboard = UIStoryboard(name: "SecondStoryboard", bundle: nil)
        let SecondViewController = SecondStoryboard.instantiateViewController(withIdentifier: "SecondStoryboardID") as! SecondViewController
        
        SecondViewController.getText(obj: objectOfClass)
        SecondViewController.modalPresentationStyle = .fullScreen
       
        
        present(SecondViewController, animated: true){
            print("Second View")
        }
    }
}

