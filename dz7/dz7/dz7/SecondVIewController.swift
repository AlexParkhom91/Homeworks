//
//  SecondVIewController.swift
//  dz7
//
//  Created by Александр Пархамович on 29.06.22.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var StickNamelabel: UILabel!
    @IBOutlet weak var SlickModellabel: UILabel!
    @IBOutlet weak var StickSidelabel: UILabel!
       
       private var StickNameText = ""
       private var SlickModelText = ""
       private var StickSideText = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .yellow
        
        StickNamelabel.text = StickNameText
        SlickModellabel.text = SlickModelText
        StickSidelabel.text = StickSideText
        
    }
 
    @IBAction func close(){
        dismiss(animated: true)
    }

    func getText(obj: HockeyStickClass) {
        StickNameText = obj.StickName
        SlickModelText = obj.SlickModel
        StickSideText = obj.StickSide
     }

}
