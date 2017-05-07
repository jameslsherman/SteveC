//
//  DocController.swift
//  SteveC
//
//  Created by James Sherman on 5/7/17.
//  Copyright © 2017 James Sherman. All rights reserved.
//

import UIKit

class DocController: UIViewController {

    var isInPain: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //*** Doctor ***
    var hasCalledDoc = false;
    @IBAction func btnDoctorYes(_ sender: UIButton) {
        hasCalledDoc = true;
    }
    
}

