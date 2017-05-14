//
//  PainController.swift
//  SteveC
//
//  Created by James Sherman on 5/7/17.
//  Copyright © 2017 James Sherman. All rights reserved.
//

import UIKit
import Firebase

class PainController: UIViewController {
    
    var handle: FIRAuthStateDidChangeListenerHandle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //*** Firebase ***
    override func viewWillAppear(_ animated: Bool) {
        handle = FIRAuth.auth()?.addStateDidChangeListener() { (auth,user) in
            //TODO: add code
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        FIRAuth.auth()?.removeStateDidChangeListener(handle!)
    }
    
    //*** Pain ***
    var isInPain = false;
    @IBAction func btnPainYes(_ sender: UIButton) {
        isInPain = true;
    }

    //*** Segue ***
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let targetVC = segue.destination as? DocController {
            targetVC.isInPain = self.isInPain
        }
        
    }
    
}

