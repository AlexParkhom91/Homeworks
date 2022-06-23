
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
    movedButton.backgroundColor = .red
}

@objc func moveBall(sender: UIButton) {
    
    let randomWidth = CGFloat.random(in: 50..<350)
        let randomHeight = CGFloat.random(in: 50..<700)
        sender.center = CGPoint (x: randomWidth, y: randomHeight)
   
}
   
}
