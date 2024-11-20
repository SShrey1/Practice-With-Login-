//
//  ViewController.swift
//  Login
//
//  Created by user@59 on 04/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var forgetUserNameButton: UIButton!
    
    @IBOutlet weak var forgetPasswordNamebutton: UIButton!
    
    @IBOutlet weak var username: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         guard let sender = sender as? UIButton else {return}
        if sender == forgetPasswordNamebutton{
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgetUserNameButton{
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = username.text
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func usernamePressed(_ sender: Any) {
        performSegue(withIdentifier: "forgetSegue", sender: "forgetUserNameButton")
    }
    
    @IBAction func passwordPressed(_ sender: Any) {
        performSegue(withIdentifier: "forgetSegue", sender: "forgetPasswordNamebutton")
    }
    
}

