//
//  ViewController.swift
//  GlowingButton
//
//  Created by Harsha Agarwal on 11/18/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create an instance of GlowingButton
        let myButton = GlowingButton(frame: CGRect(x: 100, y: 200, width: 200, height: 50))
        myButton.setTitle("Tap Me", for: .normal)
        myButton.cornerRadius = 20
        myButton.buttonColor = .systemPink
        
        // Add the button to the view
        view.addSubview(myButton)
    }
}



@IBDesignable
class GlowingButton: UIButton {
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    // MARK: - Button Setup
    private func setupButton() {
        // Default appearance
        self.layer.cornerRadius = 10
        self.backgroundColor = .systemBlue
        self.setTitleColor(.white, for: .normal)
        
        // Add shadow for a subtle 3D effect
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 2, height: 2)
        self.layer.shadowRadius = 4
        self.layer.shadowOpacity = 0.3
    }
    
    // MARK: - Glow Effect
    private func addGlow() {
        let glowAnimation = CABasicAnimation(keyPath: "shadowOpacity")
        glowAnimation.fromValue = 0
        glowAnimation.toValue = 0.8
        glowAnimation.duration = 0.3
        glowAnimation.autoreverses = true
        
        self.layer.shadowColor = UIColor.systemBlue.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0
        
        self.layer.add(glowAnimation, forKey: "glowAnimation")
    }
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                addGlow()
            }
        }
    }
    
    // MARK: - Customizable Properties
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable var buttonColor: UIColor? {
        get {
            return self.backgroundColor
        }
        set {
            self.backgroundColor = newValue
        }
    }
}


