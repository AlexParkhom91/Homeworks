//
//  ViewControllerStoryboard2.swift
//  storyboard
//
//  Created by Александр Пархамович on 30.06.22.
//

import Foundation
import UIKit

class ViewControllerStoryboard2: UIViewController {
    
    private var text1 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
    }
    
    func set1(text1: String) {
        self.text1 = text1
    }
    
    @IBAction func toFiveScreen() {
        let fiveStoryboard = UIStoryboard(name: "FiveStoryboard", bundle: nil)
        let ViewController3 = fiveStoryboard.instantiateViewController(withIdentifier: "ThirdStoryboardID") as! ViewControllerStoryboard3
        
        ViewController3.finalSet(text: text1)
        
        present(ViewController3, animated: true)
        ViewController3.modalPresentationStyle = .fullScreen
    }
    
}
