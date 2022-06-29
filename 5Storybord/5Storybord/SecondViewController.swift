//
//  SecondViewController.swift
//  5Storybord
//
//  Created by Александр Пархамович on 29.06.22.
//

import Foundation
import UIKit
class SecondViewController: UIViewController {
    
  override func viewDidLoad() {
      super.viewDidLoad()
  }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showThird" else { return }
        guard let destination = segue.destination as? ThirdViewController else { return }
        destination.name = "hello"
    }
}
