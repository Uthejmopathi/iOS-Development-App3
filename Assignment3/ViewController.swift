//
//  ViewController.swift
//  Assignment3
//
//  Created by Uthej Mopathi on 8/23/20.
//  Copyright © 2020 Uthej Mopathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var usernameEntry: UITextField!
    @IBOutlet weak var passwordEntry: UITextField!
    @IBOutlet weak var checkingDetails: UIButton!
    @IBOutlet weak var usernameCheck: UILabel!
    @IBOutlet weak var passwordCheck: UILabel!
    var x = 0
    var y = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameEntry.delegate = self
        passwordEntry.delegate = self
        checkingDetails.backgroundColor = UIColor.red
        //
        //checkingDetails.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameEntry {
            textField.resignFirstResponder()
            checkingDetails.becomeFirstResponder()
        }
        else{
            passwordEntry.resignFirstResponder()
        }
        return true
    }
    
    @IBAction func showMe(_ sender: Any) {
        let name: String = usernameEntry.text!
        let pass: String = passwordEntry.text!
        if name == "" && pass ==  ""{
            usernameCheck.text = ""
            passwordCheck.text = ""
        }
        else if name != "" && pass == ""{
            if name.count > 7 && name.count < 33{
                usernameCheck.text = " \(name) :"
                passwordCheck.text = "         "
            }
            else{
                usernameCheck.text = "         "
                passwordCheck.text = "         "
            }
        }
        else if name == "" && pass != ""{
            usernameCheck.text = "           "
            passwordCheck.text = "\(pass) :"
        }
        else{
            if name.count > 7 && name.count < 33{
                usernameCheck.text = " \(name):"
                passwordCheck.text = "\(pass):"
            }
            else{
                usernameCheck.text = "         "
                passwordCheck.text = "\(pass):"
            }
        }
    }
}
