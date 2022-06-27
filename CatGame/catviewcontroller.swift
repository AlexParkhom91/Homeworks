
import UIKit

public final class CatViewController: UIViewController {
   
    private let movedButton: UIButton = UIButton()
    public override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemGreen

    
    movedButton.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
    movedButton.layer.cornerRadius = 50
    movedButton.setTitle("жмяк", for: .normal)
    
    movedButton.addTarget(self, action: #selector(moveBall(sender:)), for: .touchUpInside)
    view.addSubview(movedButton)
    movedButton.center = view.center
    movedButton.backgroundColor = randomColor()
}

@objc func moveBall(sender: UIButton) {
    
    let randomWidth = CGFloat.random(in: 50..<350)
        let randomHeight = CGFloat.random(in: 50..<700)
        sender.center = CGPoint (x: randomWidth, y: randomHeight)
   
}
     func randomColor() -> UIColor {
        switch Int.random(in: 1...8) {
        case 1: return UIColor.red
        case 2: return UIColor.systemCyan
        case 3: return UIColor.orange
        case 4: return UIColor.brown
        case 5: return UIColor.blue
        case 6: return UIColor.systemFill
        case 7: return UIColor.systemMint
        case 8: return UIColor.yellow
        default: return UIColor.systemRed
        }
     }
}
