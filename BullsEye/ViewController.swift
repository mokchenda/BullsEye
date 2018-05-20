//
//  ViewController.swift
//  BullsEye
//
//  Created by Chenda Mok on 5/20/18.
//  Copyright © 2018 Chenda Mok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert() {
        print("+++ showAlert")
        let alert = UIAlertController(title: "Hello World", message: "This is my first App", preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func knockKnock() {
        print("+++knockKnock")
        let alert = UIAlertController(title: "Kock Knock", message: "Who are you ?", preferredStyle: .alert)
        let action = UIAlertAction(title: "This is your grand ma", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    

}

