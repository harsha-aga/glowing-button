GlowingButton - Custom UIButton in Swift
GlowingButton is a customizable UIButton subclass in Swift that provides a glowing effect when tapped. It’s a reusable UI control designed to make your apps look polished with minimal effort. You can customize the button’s appearance, including its corner radius, background color, and glowing effect.

![ScreenRecording2024-11-18at9 14 47AM-ezgif com-crop](https://github.com/user-attachments/assets/d1679066-02e4-4c8f-8372-c045fe1a187e)


Features
Customizable corner radius.
Glowing effect when the button is tapped.
Easy to use and reuse in any project.
Compatible with Interface Builder (IBDesignable).
Installation
You can integrate the GlowingButton into your project by simply adding the GlowingButton.swift file into your Xcode project.

Download the GlowingButton.swift file.
Add the file to your Xcode project by dragging it into the project navigator.
You can now use GlowingButton in both Interface Builder and programmatically.
Usage
Programmatically
You can create and customize the GlowingButton in your view controllers like this:

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
Using Interface Builder
Drag a UIButton from the Object Library onto your storyboard.
Set the class of the button to GlowingButton in the Identity Inspector.
You can then customize its properties like cornerRadius and buttonColor in the Attributes Inspector.
Customizable Properties
cornerRadius: Set the corner radius of the button for rounded corners.
buttonColor: Set the background color of the button.
These properties are marked with @IBInspectable, so you can easily customize them in Interface Builder as well.

Glow Effect
When the button is tapped, it adds a glowing effect. The effect is achieved by animating the button’s shadow opacity, making it glow briefly when the button is pressed.

Example
Here’s an example of a fully customized button using GlowingButton:

let glowingButton = GlowingButton(frame: CGRect(x: 100, y: 200, width: 250, height: 60))
glowingButton.setTitle("Glow Button", for: .normal)
glowingButton.cornerRadius = 15
glowingButton.buttonColor = .systemTeal
view.addSubview(glowingButton)


This will create a glowing button with rounded corners and a teal background color.

Requirements
iOS 9.0+.
Xcode 11 or higher.
Swift 5.0+.
License
This project is licensed under the MIT License - see the LICENSE file for details.

Conclusion
The GlowingButton component is a simple yet powerful UI control that enhances the look and feel of your app. It’s easy to integrate and can be used across multiple projects, saving you time on repetitive UI tasks.

Feel free to modify the component to suit your needs and make your apps stand out!
