//
//  ViewController.swift
//  UIWebviewExample
//
//  Created by Tran Khanh on 11/12/15.
//  Copyright © 2015 Tran Khanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var webView: UIWebView!;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // Method 1
//        let requestURL = NSURL(string: "http://www.sourcefreeze.com");
//        let requestObj = NSURLRequest(URL: requestURL!);
//        webView.loadRequest(requestObj);

        // Method 2
//        let localfilePath = NSBundle.mainBundle().URLForResource("home", withExtension: "html");
//        let myRequest = NSURLRequest(URL: localfilePath!);
//        webView.loadRequest(myRequest);
        // Method 3
        let webFrame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height)
        let webview:UIWebView = UIWebView(frame: webFrame)
        webview.loadRequest(NSURLRequest(URL: NSURL(string: "http://www.sourcefreeze.com")!))
        self.view.addSubview(webview)

        let htmlTitle = webView.stringByEvaluatingJavaScriptFromString("document.title");
        print(htmlTitle)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

