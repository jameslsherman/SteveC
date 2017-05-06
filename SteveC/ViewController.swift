//
//  ViewController.swift
//  SteveC
//
//  Created by James Sherman on 5/5/17.
//  Copyright © 2017 James Sherman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var IsInPain = false
    var HasCalledDoc = false
    var HasTakenMeds = false

    let URL_SAVE_STEVEC = "http://www.flip3000.com/stevec/save_stevec.php"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendRequest(sender: UIButton) {
//        let url = NSURL(string: URL_SAVE_STEVEC)!
//        let reqeustURL = NSMutableURLRequest(URL: url as URL)
    }
    
    
    @IBAction func btnIsInPain(_ sender: UIButton) {
        IsInPain = true
    }
    
    @IBAction func btnHasCalledDoc(_ sender: UIButton) {
        HasCalledDoc = true
    }
    
    @IBAction func btnHasTakenMeds(_ sender: UIButton) {
        HasTakenMeds = true
    }
    
}

