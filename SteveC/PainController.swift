//
//  PainController.swift
//  SteveC
//
//  Created by James Sherman on 5/7/17.
//  Copyright © 2017 James Sherman. All rights reserved.
//

import UIKit

class PainController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //*** Pain ***
    var isInPain = false;
    @IBAction func btnPainYes(_ sender: UIButton) {
        isInPain = true;
    }

    //*** Segue ***
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let isInPain = self.isInPain
//        if let docController = segue.destination as? DocController {
//            docController.isInPain = isInPain
//        }
//        
//    }
    
}

