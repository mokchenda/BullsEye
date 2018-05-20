//
//  ViewController.swift
//  BullsEye
//
//  Created by Chenda Mok on 5/20/18.
//  Copyright © 2018 Chenda Mok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 0
    var targetValue: Int = 0
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentValue = lroundf(slider.value)
        startNewRound()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }
    
    func startNewRound() {
        targetValue = Int(arc4random_uniform(100)) + 1
        currentValue = 50
        slider.value = Float(currentValue)
        self.updateLabels()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        // sliderMoved(slider: ...)
        // sliderMoved(slider)
        print("+++ The value of slider is now: \(slider.value)")
        //currentValue = Int(slider.value)
        currentValue = lroundf(slider.value)
    }
    
    @IBAction func showAlert() {
        print("+++ showAlert \(currentValue)" )
        var difference: Int
        if currentValue>targetValue {
            difference = currentValue - targetValue
        } else if currentValue<targetValue {
           difference = targetValue -  currentValue
        } else {
            difference=0
        }
        
        let message = "Ths value pf the slider is:\(currentValue)" +
        "\n The target value is \(targetValue)" +
        "\n The difference value is \(difference)"
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        self.startNewRound()
        
    }
    
    @IBAction func knockKnock() {
        print("+++knockKnock")
        let alert = UIAlertController(title: "Kock Knock", message: "Who are you ?", preferredStyle: .alert)
        let action = UIAlertAction(title: "This is your grand ma", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    

}

