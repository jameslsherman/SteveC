//
//  LoginController.swift
//  SteveC
//
//  Created by James Sherman on 5/14/17.
//  Copyright © 2017 James Sherman. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class LoginController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func didTapEmailLogin(_ sender: AnyObject) {
        if let email = self.emailField.text, let password = self.passwordField.text {
            showSpinner({
                // [START headless_email_auth]
                FIRAuth.auth()?.signIn(withEmail: email, password: password) { (user, error) in
                    // [START_EXCLUDE]
                    self.hideSpinner({
                        if let error = error {
                            self.showMessagePrompt(error.localizedDescription)
                            return
                        }
                        self.navigationController!.popViewController(animated: true)
                    })
                    // [END_EXCLUDE]
                }
                // [END headless_email_auth]
            })
        } else {
            self.showMessagePrompt("email/password can't be empty")
        }
    }
    
    /** @fn requestPasswordReset
     @brief Requests a "password reset" email be sent.
     */
    @IBAction func didRequestPasswordReset(_ sender: AnyObject) {
        showTextInputPrompt(withMessage: "Email:") { (userPressedOK, userInput) in
            if let userInput = userInput {
                self.showSpinner({
                    // [START password_reset]
                    FIRAuth.auth()?.sendPasswordReset(withEmail: userInput) { (error) in
                        // [START_EXCLUDE]
                        self.hideSpinner({
                            if let error = error {
                                self.showMessagePrompt(error.localizedDescription)
                                return
                            }
                            self.showMessagePrompt("Sent")
                        })
                        // [END_EXCLUDE]
                    }
                    // [END password_reset]
                })
            }
        }
    }
    
    /** @fn getProvidersForEmail
     @brief Prompts the user for an email address, calls @c FIRAuth.getProvidersForEmail:callback:
     and displays the result.
     */
    @IBAction func didGetProvidersForEmail(_ sender: AnyObject) {
        showTextInputPrompt(withMessage: "Email:") { (userPressedOK, email) in
            if let email = email {
                self.showSpinner({
                    // [START get_providers]
                    FIRAuth.auth()?.fetchProviders(forEmail: email) { (providers, error) in
                        // [START_EXCLUDE]
                        self.hideSpinner({
                            if let error = error {
                                self.showMessagePrompt(error.localizedDescription)
                                return
                            }
                            self.showMessagePrompt(providers!.joined(separator: ", "))
                        })
                        // [END_EXCLUDE]
                    }
                    // [END get_providers]
                })
            } else {
                self.showMessagePrompt("email can't be empty")
            }
        }
    }
    
    @IBAction func didCreateAccount(_ sender: AnyObject) {
        showTextInputPrompt(withMessage: "Email:") { (userPressedOK, email) in
            if let email = email {
                self.showTextInputPrompt(withMessage: "Password:") { (userPressedOK, password) in
                    if let password = password {
                        self.showSpinner({
                            // [START create_user]
                            FIRAuth.auth()?.createUser(withEmail: email, password: password) { (user, error) in
                                // [START_EXCLUDE]
                                self.hideSpinner({
                                    if let error = error {
                                        self.showMessagePrompt(error.localizedDescription)
                                        return
                                    }
                                    print("\(user!.email!) created")
                                    self.navigationController!.popViewController(animated: true)
                                })
                                // [END_EXCLUDE]
                            }
                            // [END create_user]
                        })
                    } else {
                        self.showMessagePrompt("password can't be empty")
                    }
                }
            } else {
                self.showMessagePrompt("email can't be empty")
            }
        }
    }
}
