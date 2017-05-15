//
//  ViewController.swift
//  downloading web content
//
//  Created by QI WANG on 15/05/2017.
//  Copyright © 2017 Lyra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      /*
        let url = URL(string: "https://www.baidu.com")!
        
        webView.loadRequest(URLRequest(url: url))
        webView.loadHTMLString("<h1>hello there </h1>", baseURL: nil)
 
            */
        
        if let url = URL(string: "https://www.stackoverflow.com"){
            let request =  NSMutableURLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest){
                data, response, error in
                
                if error != nil {
                    print(error)
                }else {
                    if let unwrappedData = data {
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        print(dataString)
                    }
                }
                
            }
            task.resume()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

