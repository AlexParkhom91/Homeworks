//
//  ViewControllerStoryboard1.swift
//  storyboard
//
//  Created by Александр Пархамович on 30.06.22.
//

import Foundation
import UIKit

class ViewControllerStoryboard1: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
    }
    
    @IBAction func toSecondScreen() {
        let fiveStoryboard = UIStoryboard(name: "FiveStoryboard", bundle: nil)
        let ViewController2 = fiveStoryboard.instantiateViewController(withIdentifier: "SecondStoryboardID") as! ViewControllerStoryboard2
    
        
        ViewController2.set1(text1: "ПОЛУЧИЛОСЬ")
        
        present(ViewController2, animated: true)
        ViewController2.modalPresentationStyle = .fullScreen
    }
}
