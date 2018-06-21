//
//  KisteensViewController.swift
//  KIST
//
//  Created by Ashish Gupta on 1/18/15.
//  Copyright (c) 2015 Example. All rights reserved.
//

import UIKit

class KisteensViewController: UIViewController {

    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var url = NSURL(string: "http://www.kist.ed.jp")
        var request = NSURLRequest(URL:url!)
        webView.loadRequest(request)
        webView.scalesPageToFit = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
