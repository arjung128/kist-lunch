//
//  FifthViewController.swift
//  lunchv3
//
//  Created by Ashish Gupta on 1/1/15.
//  Copyright (c) 2015 Example. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    
    @IBOutlet weak var webview4: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var url = NSURL(string: "http://www.kist.ed.jp/files/pdf/TheComet/The%20Comet_2014.12_E.pdf")
        var request = NSURLRequest(URL:url!)
        webview4.loadRequest(request)
        webview4.scalesPageToFit = true
        
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
