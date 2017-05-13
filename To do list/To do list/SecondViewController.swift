//
//  SecondViewController.swift
//  To do list
//
//  Created by QI WANG on 12/05/2017.
//  Copyright © 2017 Lyra. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextViewDelegate{

    @IBOutlet var itemTextField: UITextField!
    

    
    @IBAction func add(_ sender: Any) {
        let itemObject = UserDefaults.standard.object(forKey: "items")
        var items : [String]
        if let tmpItems = itemObject as? [String]{
            items = tmpItems
            items.append(itemTextField.text!)
        }else{
            items = [itemTextField.text!]
        }
        UserDefaults.standard.set(items, forKey: "items")
        itemTextField.text=""
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }

    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        
        itemTextField.resignFirstResponder()
        return true
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

