//
//  FirstScreen.swift
//  BLEDemo
//
//  Created by Abdulaziz Alharbi on 12/2/18.
//  Copyright © 2018 Rick Smith. All rights reserved.
//

import UIKit
import Firebase

class FirstScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       if Auth.auth().currentUser != nil {
            performSegue(withIdentifier: "toTheMain", sender: self)
            
            
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
