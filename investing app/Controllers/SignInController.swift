//
//  SignInController.swift
//  investing app
//
//  Created by Tigran on 1/29/21.
//  Copyright © 2021 Tigran. All rights reserved.
//

import UIKit

class SignInController: UIViewController {
    
    @IBOutlet private weak var emailTF: UITextField!
    @IBOutlet private weak var passwordTF: UITextField!
    @IBOutlet private weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButton.layer.cornerRadius = 4
        
    }
    
    // transition to tab bar controller
    @IBAction private func signInTapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "Home") {
            self.dismiss(animated: true, completion: nil)
        }
        
    }
    
    

}
