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
    
    var ref: FIRDatabaseReference!

    var isInPain: Bool?
    var hasCalledDoc: Bool?
    var hasTakenMeds: Bool?

//    let sendAnswers = [isInPain, hasCalledDoc, hasTakenMeds]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.ref = FIRDatabase.database().reference(withPath: "test")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSubmit(_ sender: UIButton) {
        self.ref.child("users").setValue(["isInPain": isInPain])
    }
}

