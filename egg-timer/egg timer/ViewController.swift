//
//  ViewController.swift
//  egg timer
//
//  Created by QI WANG on 05/05/2017.
//  Copyright © 2017 Lyra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer=Timer()
    
    @IBOutlet var numberLabel: UILabel!
    
    
    
    @IBAction func onPause(_ sender: Any) {
        timer.invalidate()
    }
    
    
    @IBAction func onPlay(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.onPlaying), userInfo: nil, repeats: true)
    }
    
    func onPlaying (){
        var num = Int(numberLabel.text!)!
        if num > 0 {
            num = num - 1
            numberLabel.text = String(num)
        }

    }
    
    @IBAction func minusTen(_ sender: Any) {
        var num = Int(numberLabel.text!)!
        if(num>=10){
            num = num - 10
            numberLabel.text = String(num)
        }

    }
    
    
    
    @IBAction func reset(_ sender: Any) {
        timer.invalidate()
        numberLabel.text = String(210)
    }
    
    
    @IBAction func plusTen(_ sender: Any) {
        var num = Int(numberLabel.text!)!
            num = num + 10
            numberLabel.text = String(num)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

