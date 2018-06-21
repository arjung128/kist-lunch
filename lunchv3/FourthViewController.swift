//
//  FourthViewController.swift
//  lunchv3
//
//  Created by Ashish Gupta on 1/1/15.
//  Copyright (c) 2015 Example. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    
    @IBOutlet weak var webview3: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var url = NSURL(string: "http://www.kist.ed.jp/files/pdf/enrolment/Calendar%20for%20Families%202014-2015.pdf")
        var request = NSURLRequest(URL:url!)
        webview3.loadRequest(request)
        webview3.scalesPageToFit = true
        
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
