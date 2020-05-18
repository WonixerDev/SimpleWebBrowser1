//
//  ViewController.swift
//  Web browser
//
//  Created by Ashwin Paudel on 2020-05-18.
//  Copyright © 2020 Ashwin Paudel. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController, WKUIDelegate {

    @IBOutlet weak var mainWebView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:"https://www.google.com")
        let myRequest = URLRequest(url: myURL!)
        mainWebView.load(myRequest)
        mainWebView.customUserAgent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.141 Safari/537.36"
       
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func homeButton(_ sender: Any) {
        
        let hello = URL(string:"https://www.google.com")
               let hello1 = URLRequest(url: hello!)
               mainWebView.load(hello1)
        
    }
    
    @IBAction func reloadButton(_ sender: Any) {
        
        mainWebView.reload()
        
    }
    @IBAction func goFront(_ sender: Any) {
        
        if mainWebView.canGoForward {
            
            mainWebView.goForward()
            
        }
        
    }
    @IBAction func goBack(_ sender: Any) {
        
        if mainWebView.canGoBack {
            
            mainWebView.goBack()
            
        }
        
        
    }
}

