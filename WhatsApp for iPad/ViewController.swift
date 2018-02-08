//
//  ViewController.swift
//  WhatsApp for iPad
//
//  Created by Jordy Chetty on 2018/02/07.
//  Copyright © 2018 Intrinzic Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.scrollView.bounces = false
        webView.allowsInlineMediaPlayback = true
        webView.scrollView.isScrollEnabled = false
        let link = URL(string: "https://web.whatsapp.com")
        let request = URLRequest (url: link!, cachePolicy: URLRequest.CachePolicy.reloadIgnoringCacheData, timeoutInterval: 60)
        UserDefaults.standard.register(defaults: ["UserAgent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36"])
        self.webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

