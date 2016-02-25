//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Ankit Rai on 2/25/16.
//  Copyright © 2016 Ankit Rai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    
    @IBOutlet weak var stopBotton: UIButton!
    
    @IBOutlet weak var microPhoneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        stopBotton.hidden = true
        microPhoneButton.enabled = true
    }
   
    @IBAction func recordAudio(sender: UIButton) {
        print("I am recording!!")
        recordingInProgress.hidden = false
        stopBotton.hidden = false
        microPhoneButton.enabled = false
        
        
    }

    @IBAction func stopRecording(sender: UIButton) {
        recordingInProgress.hidden = true
        stopBotton.hidden = true
        microPhoneButton.enabled = true
    }
}

