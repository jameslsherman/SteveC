//
//  ViewController.swift
//  SteveC
//
//  Created by James Sherman on 5/5/17.
//  Copyright © 2017 James Sherman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let URL_SAVE_STEVEC = "http://www.flip3000.com/stevec/post_response.php"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //*** Pain ***
    @IBAction func btnPainNo(_ sender: UIButton) {
        var IsInPain = false
    }
    @IBAction func btnPainYes(_ sender: UIButton) {
        var IsInPain = true
    }

    //*** Doctor ***
    @IBAction func btnDoctorNo(_ sender: UIButton) {
        var HasCalledDoc = false
    }
    @IBAction func btnDoctorYes(_ sender: UIButton) {
        var HasCalledDoc = true
    }

    //*** Meds ***
    @IBAction func btnMedsNo(_ sender: UIButton) {
        var HasTakenMeds = false
    }
    @IBAction func btnMedsYes(_ sender: UIButton) {
        var HasTakenMeds = true
    }
    
}

