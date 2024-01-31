//
//  ViewController.swift
//  iOS Prework Codepath
//
//  Created by Redwan Khan on 1/31/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var schoolNameTextField: UITextField!

    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        //lets us choose title we selected from segmented control
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)?.lowercased()
        
        //creating constant of type string that holds an introduction.  intro recieves  value from  outlet connections
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year. I own \(Int(morePetsStepper.value)) pets. It is \(morePetsSwitch.isOn) that I want more pets."
        
        //creates alert where we pass in our message, which is our introduction
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
            //        print(introduction)
        
        // a way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        //passing this action to alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

