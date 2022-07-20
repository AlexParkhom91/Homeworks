//
//  ViewController.swift
//  ImagesFly
//
//  Created by Александр Пархамович on 13.07.22.
//

import UIKit
class ViewController: UIViewController {
let ImageView = UIImageView()
let ImageArray = [UIImage]()
    
    //array of images
    
let Array = ["Image1", "Image2", "Image3", "Image4",]
var currentImage = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemRed
        ImageView.frame = CGRect(x: 0, y: 0, width: 400, height: 550)
        ImageView.center = view.center
        ImageView.image = UIImage(named: Array[currentImage])
        ImageView.layer.shadowColor = UIColor.systemBlue.cgColor
        ImageView.layer.shadowOpacity = 0.5
        ImageView.layer.shadowRadius = 15
        view.addSubview(ImageView)
       
        swipe()

        }
    // right/left swipe function
    func swipe() {
            
        let swipeLeft = UISwipeGestureRecognizer()
        let swipeRight = UISwipeGestureRecognizer()
            
        swipeLeft.direction = .left
        swipeRight.direction = .right
            
        ImageView.isUserInteractionEnabled = true
            
        ImageView.addGestureRecognizer(swipeLeft)
        ImageView.addGestureRecognizer(swipeRight)
            
            swipeLeft.addTarget(self, action: #selector(nextImage))
            swipeRight.addTarget(self, action: #selector(previousImage))
        }
        
        // swipe left - next image
    
        @objc func nextImage() {
            if currentImage == ImageArray.count - 1 {
                currentImage = 0
            } else {
                currentImage += 1
            }
            
            ImageView.image = UIImage(named: Array[currentImage])
            
        }
        
        // swipe right - previos image
    
        @objc func previousImage() {
             if currentImage == 0 {
                currentImage = ImageArray.count - 1
            } else {
                currentImage -= 1
            }
            
            ImageView.image = UIImage(named: Array[currentImage])
    
    
    
    
    }
}


