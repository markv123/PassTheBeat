//
//  ViewController.swift
//  PassTheBeat
//
//  Created by Mark Violette on 5/5/18.
//  Copyright © 2018 Mark Violette. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonAddBeat: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goAddBeatView(_ sender: Any) {
        performSegue(withIdentifier: "segueAddBeatView", sender: self)
    }
    
}

