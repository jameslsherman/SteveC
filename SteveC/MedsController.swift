//
//  MedsController.swift
//  SteveC
//
//  Created by James Sherman on 5/7/17.
//  Copyright © 2017 James Sherman. All rights reserved.
//

import UIKit

class MedsController: UIViewController {
    
    var isInPain: Bool?
    var hasCalledDoc: Bool?
    
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
    
    //*** Segue ***
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let targetVC = segue.destination as? ViewController {
            targetVC.isInPain = self.isInPain
            targetVC.hasCalledDoc = self.hasCalledDoc
            targetVC.hasTakenMeds = self.hasTakenMeds
        }
        
    }
    
}

