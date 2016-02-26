//
//  PlayVoiceViewController.swift
//  PitchPerfect
//
//  Created by Ankit Rai on 2/25/16.
//  Copyright © 2016 Ankit Rai. All rights reserved.
//

import UIKit
import AVFoundation

class PlayVoiceViewController: UIViewController {
    
    @IBOutlet weak var slow: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    var audioPlayer:AVAudioPlayer!
    
    @IBOutlet weak var fast: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3"){
            
            var filePathUrl = NSURL.fileURLWithPath(filePath)
            do {
                try
                    
                    audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl)
                audioPlayer.enableRate = true
                
            }
            catch{
                print("Not able initliaze")
            }
        }  else{
            print("file is not found")
        }
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playFast(sender: UIButton) {
        print("Yes speaking fast")
        stopButton.hidden = false
        audioPlayer.rate  = 2.0
        audioPlayer.play()
        fast.enabled = false
//        audioPlayer.stop()
//        fast.enabled = true
    }
    
    @IBAction func playSlow(sender: UIButton) {
        print("yes speaking slow")
        audioPlayer.rate  = 0.5
        stopButton.hidden = false
        audioPlayer.play()
        slow.enabled = false
//        audioPlayer.stop()
//        slow.enabled = true
       
    }
    @IBAction func stopPlayback(sender: UIButton) {
        print("stopping ")
        audioPlayer.stop()
        stopButton.hidden = true
        slow.enabled = true
        fast.enabled = true
    }
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
