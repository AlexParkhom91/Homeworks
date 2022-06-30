//
//  ThirdViewController.swift
//  dz7
//
//  Created by Александр Пархамович on 29.06.22.
//


import Foundation
import UIKit

class ThirdViewController: UIViewController{
@IBOutlet weak var nameLabel: UILabel!
    
    private var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .green
        
        nameLabel.text = name
        
    }
    
    @IBAction func close(){
        dismiss(animated: true)
    }

    func set(name: String){
        self.name = name
    }
    
}

