//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    
    let eggTimes = ["Soft":5, "Medium":7, "Hard": 10]
    
    var timer = Timer()
    var totalTime = 0
    var secPassed = 0
    
    var player: AVAudioPlayer!

    @IBOutlet weak var progBar: UIProgressView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBAction func eggHardness(_ sender: UIButton) {
        
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        progBar.progress = 0.0
        secPassed = 0
        titleLabel.text = hardness
        
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
        
        
    }
    @objc func timerUpdate() {
        //example functionality
        if secPassed < totalTime {
            secPassed += 1
            let percentageProgress = Float(secPassed) / Float(totalTime)
            progBar.progress = Float(percentageProgress)
        }else{
            timer.invalidate()
            titleLabel.text = "Done!"
            
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
}
