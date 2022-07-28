//
//  Extention Alert.swift
//  homework15
//
//  Created by Александр Пархамович on 26.07.22.
//

import Foundation
import UIKit

extension ViewController{
    func alert(){
        let alertController = UIAlertController(
            title: "New system",
        message: "Please enter password",
            preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){ _ in
            print("cancel")
            }
        let agreeActoin = UIAlertAction(title: "Agree", style: .default){ _ in
            print("\(String(describing: alertController.textFields))")
            }
    alertController.addTextField {
    textfield in textfield.placeholder = "Inter password"
        }
    
        alertController.addAction(cancelAction)
        alertController.addAction(agreeActoin)
        self.present(alertController, animated: true)
    
 
}
}

