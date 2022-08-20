//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTime = ["Soft":3, "Medium":4 , "Hard": 7]
    
    var totalTime = 0
    var secoundsCompleted = 0
    var timer = Timer()
    
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    @IBAction func HardnessSelected(_ sender: UIButton) {

        // Reseting the timer.
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTime[hardness]! // Soft, Medium, Hard
        
        ProgressBar.isHidden = false
        ProgressBar.progress = 0.0
        secoundsCompleted = 0
        
        TitleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(updateTimer), userInfo: nil, repeats: true)

        
        
    }
    
    @objc func updateTimer(){
        if secoundsCompleted < totalTime{
            
            secoundsCompleted += 1
            let progressPercentage = Float(secoundsCompleted) / Float(totalTime)

            ProgressBar.progress = progressPercentage
            
            print("\(secoundsCompleted) secounds.")
           
        }
        else{
            timer.invalidate()
            TitleLabel.text = "Done ! "
        }
        
    }
    
}
