//
//  MedsController.swift
//  SteveC
//
//  Created by James Sherman on 5/7/17.
//  Copyright © 2017 James Sherman. All rights reserved.
//

import UIKit

class MedsController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //*** Meds ***
    var hasTakenMeds = false;
    @IBAction func btnMedsYes(_ sender: UIButton) {
        hasTakenMeds = true;
    }
    
}

