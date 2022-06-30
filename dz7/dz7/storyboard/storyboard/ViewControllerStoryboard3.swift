//
//  ViewControllerStoryboard3.swift
//  storyboard
//
//  Created by Александр Пархамович on 30.06.22.
//

import Foundation

import UIKit

class ViewControllerStoryboard3: UIViewController {
    
    @IBOutlet weak var textLable: UILabel!
    
    private var finalText = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        
        textLable.text = finalText
        
    }
    
    public func finalSet(text: String) {
        finalText = text
    }
    
}
