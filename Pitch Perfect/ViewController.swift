//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Lincoln Sea on 7/6/15.
//  Copyright (c) 2015 Lincoln Sea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true
        recordButton.enabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        println("in recordAudio")
        recordingLabel.hidden = false
        stopButton.hidden = false
        recordButton.enabled = false
    }

    @IBAction func stopAudio(sender: UIButton) {
        recordingLabel.hidden = true
    }
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
}

