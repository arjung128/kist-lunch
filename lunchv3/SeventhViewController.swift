//
//  SeventhViewController.swift
//  KIST
//
//  Created by Ashish Gupta on 1/7/15.
//  Copyright (c) 2015 Example. All rights reserved.
//

import UIKit

class SeventhViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    func sendOrderToParse(orderedItem: String){
        
        var alert = UIAlertController(title: "Order \(orderedItem)", message: "Are you sure?", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: { action in
            
            Parse.setApplicationId("FCwgZpqRvE5SIawHSYG8EhVREEnE3oTRCM3t4gqa", clientKey: "GODfkqvlnbWiZh1YgVZKZjKQlw2dsTQoAsiaengx")
            
            var lunch = PFObject(className: "lunch")
            lunch.setObject(userfirstname + " " + userlastname, forKey: "Name")
            lunch.setValue(usergrade, forKey: "Grade")
            lunch.setValue(useremail, forKey: "Email")
            lunch.setObject("\(orderedItem)", forKey: "Meal")
            lunch.saveInBackgroundWithTarget(nil, selector: nil)
            
            lunch.saveInBackgroundWithBlock {
                (success: Bool!, error: NSError!) -> Void in
                
                if success == true {
                    
                    var alertsuccess = UIAlertController(title: "Order", message: "Order Successfully Submitted", preferredStyle: UIAlertControllerStyle.Alert)
                    
                    alertsuccess.addAction(UIAlertAction(title: "OK", style: .Default, handler: { action in
                        
                        self.dismissViewControllerAnimated(true, completion: nil)
                        
                    }))
                    
                    self.presentViewController(alertsuccess, animated: true, completion: nil)
                    
                } else {
                    
                    var alertfail = UIAlertController(title: "Error", message: "Order Not Submitted", preferredStyle: UIAlertControllerStyle.Alert)
                    
                    alertfail.addAction(UIAlertAction(title: "OK", style: .Default, handler: { action in
                        
                        self.dismissViewControllerAnimated(true, completion: nil)
                        
                    }))
                    
                    self.presentViewController(alertfail, animated: true, completion: nil)                }
                
            }
            
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: { action in
            
            self.dismissViewControllerAnimated(true, completion: nil)
            
        }))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
        
        
    }
    
    
    
    @IBAction func myButton(sender: AnyObject) {
        
        sendOrderToParse("Orange Juice")
        
    }

    @IBAction func myButton2(sender: AnyObject) {
        
        sendOrderToParse("Apple Juice")
        
    }

    
    @IBAction func myButton3(sender: AnyObject) {
        
        sendOrderToParse("Mineral Water")
        
    }
    
    @IBAction func myButton4(sender: AnyObject) {
        
        sendOrderToParse("Perrier")
        
    }
    
    
    @IBAction func myButton5(sender: AnyObject) {
        
        sendOrderToParse("Green Tea")
        
    }
    
    @IBAction func myButton6(sender: AnyObject) {
        
        sendOrderToParse("Milk")
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var scrollEnabled = true
        scrollView.scrollEnabled = true
        scrollView.contentSize = CGSize(width: 320, height: 800)
        
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
