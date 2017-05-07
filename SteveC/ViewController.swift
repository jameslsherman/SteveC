//
//  ViewController.swift
//  SteveC
//
//  Created by James Sherman on 5/5/17.
//  Copyright © 2017 James Sherman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isInPain: Bool?
    var hasCalledDoc: Bool?
    var hasTakenMeds: Bool?

    let URL_SAVE_STEVEC = "http://www.flip3000.com/stevec/post_response.php"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

