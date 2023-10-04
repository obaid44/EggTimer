//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var mainHeading: UILabel!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        var timer = Timer()
        let eggTime = ["Soft" : 5, "Medium" : 7, "Hard" : 12]
        var secondRemaining = 1
        let hardness = sender.currentTitle!
//print(eggTime[hardness]!)
        var totalTime = eggTime[hardness]!
        timer.invalidate()
        self.progressBar.progress = 0
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
        
//            if self.secondsRemaining > 0 {
//                print ("\(self.secondsRemaining) seconds")
//                self.secondsRemaining -= 1
            if secondRemaining < totalTime {
                var temp = Float(secondRemaining) / Float(totalTime)
                print(temp)
                self.progressBar.progress = temp
                secondRemaining += 1
            
            } else {
                // MARK: Test Comment
                Timer.invalidate()
                self.mainHeading.text = "Done"
                self.progressBar.progress = 1
            }
        }
    }
    
   
}
        

    
