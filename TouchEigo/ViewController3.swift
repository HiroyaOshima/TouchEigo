//
//  MovieViewController.swift
//  TouchEigo
//
//  Created by 大嶋 広也 on 2017/03/09.
//  Copyright © 2017年 大嶋 広也. All rights reserved.
//

import Foundation
import UIKit


class ViewController3:UIViewController {
    
    var webView:UIWebView? = nil
    
    
    @IBAction func monsterTap(_ sender: Any) {
        let request = NSURLRequest(url: NSURL(string: "https://www.youtube.com/watch?v=Q8JmK5z6QD4&list=PLWh-5kAWNVzQCUjbM4FAwQ2pfmb44zFyK")! as URL)
        webView?.loadRequest(request as URLRequest)
    }
    
    
    @IBAction func anpanTap(_ sender: Any) {
        let request = NSURLRequest(url: NSURL(string: "https://www.youtube.com/watch?v=Q8JmK5z6QD4&list=PLWh-5kAWNVzQCUjbM4FAwQ2pfmb44zFyK")! as URL)
        webView?.loadRequest(request as URLRequest)

    }
    
}
