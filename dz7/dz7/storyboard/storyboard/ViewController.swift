//
//  ViewController.swift
//  storyboard
//
//  Created by Александр Пархамович on 30.06.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        // Do any additional setup after loading the view.
    }

    
     
    @IBAction func openStoryBoard(_ sender: Any) {
    
        let FiveStoryboard = UIStoryboard(name: "FiveStoryboard", bundle: nil)
          let viewController1 = FiveStoryboard.instantiateViewController(withIdentifier: "FirstStoryboardID")as! ViewControllerStoryboard1
          
          present(viewController1, animated: true)
        viewController1.modalPresentationStyle = .fullScreen
      }
}

