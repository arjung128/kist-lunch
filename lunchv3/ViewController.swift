//
//  ViewController.swift
//  lunchv3
//
//  Created by Arjun Gupta on 12/17/14.
//  Copyright (c) 2014 Example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
    
    
    @IBAction func myButton3233(sender: AnyObject) {
        
        sendOrderToParse("Child Curry")
        
    }
    
    @IBAction func myButton123433(sender: AnyObject) {
        
        sendOrderToParse("Fried Rice with Egg")
        
    }
    
    @IBAction func myButton21(sender: AnyObject) {
        
        sendOrderToParse("Fried Rice with Egg")
        
    }
    
    
    @IBAction func muButton3(sender: AnyObject) {
        
        sendOrderToParse("Vegetable Spaghetti")
        
    }
    
    
    @IBAction func myButton4(sender: AnyObject) {
        
        sendOrderToParse("Spaghetti Meat Sauce")
        
    }
    
    
    @IBAction func myButton5(sender: AnyObject) {
        
        sendOrderToParse("Fried Chicken and Fried Rice")
        
    }
    
    
    @IBAction func myButton6(sender: AnyObject) {
        
        sendOrderToParse("Green Curry")
        
    }
    
    
    @IBAction func myButton7(sender: AnyObject) {
        
        sendOrderToParse("Pork Hamburg Steak")
        
    }
    
    
    @IBAction func myButton8(sender: AnyObject) {
        
        sendOrderToParse("Chicken Cutlet")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var scrollEnabled = true
        scrollView.scrollEnabled = true
        scrollView.contentSize = CGSize(width: 320, height: 1200)
        
        println(userfirstname)
        println(userlastname)
        println(usergrade)
        println(useremail)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

