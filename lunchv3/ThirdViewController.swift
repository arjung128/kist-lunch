//
//  ThirdViewController.swift
//  lunchv3
//
//  Created by Ashish Gupta on 12/30/14.
//  Copyright (c) 2014 Example. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    
    @IBOutlet weak var webview2: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var url = NSURL(string: "https://login.microsoftonline.com")
        var request = NSURLRequest(URL:url!)
        webview2.loadRequest(request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
