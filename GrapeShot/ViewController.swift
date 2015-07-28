//
//  ViewController.swift
//  GrapeShot
//
//  Created by Aaron Voisine on 7/26/15.
//  Copyright (c) 2015 Aaron Voisine. All rights reserved.
//
//  WARNING: I don't know swift and I have no idea what I'm doing

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var screenshot: UIImageView?
    @IBOutlet weak var label: UILabel?
    var index: Int = 0
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.nextScreenshot(nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    @IBAction func nextScreenshot(recognizer:UITapGestureRecognizer?) {
        self.screenshot?.image =
            UIImage(named: NSLocalizedString("en-US", comment: "") + "-iPhone5-" + String(self.index) + "-portrait")
        self.label?.text = NSLocalizedString("label-" + String((self.index + 1) % 5), comment: "")
        self.index++
    }
}

