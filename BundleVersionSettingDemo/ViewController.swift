//
//  ViewController.swift
//  BundleVersionSettingDemo
//
//  Created by Kyusaku Mihara on 5/18/15.
//  Copyright (c) 2015 epohsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let infoDictionary = NSBundle.mainBundle().infoDictionary {
            let version = infoDictionary["CFBundleShortVersionString"] as! String
            let build = infoDictionary["CFBundleVersion"] as! String
            self.label.text = "\(version) (\(build))"
        }
    }

}

