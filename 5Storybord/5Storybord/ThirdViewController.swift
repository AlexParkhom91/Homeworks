//
//  ThirdViewController.swift
//  5Storybord
//
//  Created by Александр Пархамович on 29.06.22.
//
import UIKit
class ThirdViewController: UIViewController {
    var name = ""
      
      @IBOutlet var username: UILabel!
      
      override func viewDidLoad() {
          super.viewDidLoad()
          
          username.text = name
      }
}
