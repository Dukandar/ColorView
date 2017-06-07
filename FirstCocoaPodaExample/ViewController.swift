//
//  ViewController.swift
//  FirstCocoaPodaExample
//
//  Created by Sunilkumar Basappa on 07/06/17.
//  Copyright © 2017 iNube. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let colorView = ColorView(frame: self.view.bounds)
        self.view.addSubview(colorView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

