//
//  signInViewController.swift
//  BLEDemo
//
//  Created by Abdulaziz Alharbi on 12/2/18.
//  Copyright © 2018 Rick Smith. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD


class signInViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signInPressed(_ sender: Any) {
        
        SVProgressHUD.show()
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            
            if error != nil {
                print(error!)
                SVProgressHUD.dismiss()
                
                let alertVC = UIAlertController(title: "Error", message: "Check your Email/Password", preferredStyle: .alert)
                
                let okAction = UIAlertAction(title: "Ok", style: .default, handler: { (UIAlertAction) in
                    alertVC.dismiss(animated: true, completion: nil)
                })
                alertVC.addAction(okAction)
                
                self.present(alertVC, animated: true, completion: nil)
                
                
            } else {
                print("Log in successful!")
                
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "toTheMain", sender: self)
                
            }
            
        }

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        
        return(true)
        
    }
    
    ////

}
