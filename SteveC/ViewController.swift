//
//  ViewController.swift
//  SteveC
//
//  Created by James Sherman on 5/5/17.
//  Copyright © 2017 James Sherman. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ViewController: UIViewController {
    
    var handle: FIRAuthStateDidChangeListenerHandle?
    
    var ref: FIRDatabaseReference!

    var isInPain: Bool?
    var hasCalledDoc: Bool?
    var hasTakenMeds: Bool?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.ref = FIRDatabase.database().reference(withPath: "test")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // [START auth_listener]
        handle = FIRAuth.auth()?.addStateDidChangeListener() { (auth, user) in
            // [START_EXCLUDE]
            // [END_EXCLUDE]
        }
        // [END auth_listener]
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // [START remove_auth_listener]
        FIRAuth.auth()?.removeStateDidChangeListener(handle!)
        // [END remove_auth_listener]
    }
    
    @IBAction func btnSubmit(_ sender: UIButton) {
        //uid: ole4bYxGUAgxLap26R0i6lkbTIP2
        //self.ref.child("users").child(user.uid).setValue(["username": username])
        var timestamp = NSDate().timeIntervalSince1970
        let post = ["isInPain": isInPain!,
                    "hasCalledDoc": hasCalledDoc!,
                    "hasTakenMeds": hasTakenMeds!,
                    "timestamp": timestamp] as [String : Any]
        self.ref.child("u").setValue(["answers": post])
    }
}

