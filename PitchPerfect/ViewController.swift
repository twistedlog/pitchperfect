//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Sahil Chug on 5/21/16.
//  Copyright © 2016 Sahil Chug. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    
    @IBOutlet weak var recordButton: UIButton!
    
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: AnyObject) {
        print("record button was pressed")
        recordingLabel.text = "Recording in progress"
        stopRecordingButton.enabled = true
        recordButton.enabled = false
    }

    @IBAction func stopRecording(sender: AnyObject) {
        print("stop recoding button clicked")
        stopRecordingButton.enabled = false
        recordButton.enabled = true
        recordingLabel.text = "Tap to Record"
    }
    
    override func viewWillAppear(animated: Bool) {
        stopRecordingButton.enabled = false
    }
}

