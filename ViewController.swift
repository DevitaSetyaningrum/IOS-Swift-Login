//
//  ViewController.swift
//  Pertemuan1
//
//  Created by Devita setyaningrum on 22/09/20.
//  Copyright © 2020 Devita setyaningrum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtTitle: UILabel!
    @IBOutlet weak var txtPass: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLogin(_ sender: Any) {
        let username = txtEmail.text!
        let pass = txtPass.text!
        
        if(username.contains("@") && (username.hasSuffix(".com") || username.hasSuffix(".co.id")) && !username.contains("@.")){
                let charset1 = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz")
                let charset2 = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
                let charset3 = CharacterSet(charactersIn: "1234567890")
            
            if(pass.rangeOfCharacter(from: charset1) != nil) && (pass.rangeOfCharacter(from: charset2) != nil) && (pass.rangeOfCharacter(from: charset3) != nil){
                
                txtResult.text = "Succes login as \(username)"
            } else {
                txtResult.text = "Password invalid"
            }
        } else {
            txtResult.text = "Username invalid"
        }
    }
}

