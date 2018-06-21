//
//  EighthViewController.swift
//  KIST
//
//  Created by Ashish Gupta on 1/7/15.
//  Copyright (c) 2015 Example. All rights reserved.
//

import UIKit

class EighthViewController: UIViewController {
    
    
    @IBOutlet weak var mealname: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var mealname2: UILabel!
    
    @IBOutlet weak var price2: UILabel!
    
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var mealname3: UILabel!
    
    @IBOutlet weak var price3: UILabel!
    
    @IBOutlet weak var button3: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
  Parse.setApplicationId("FCwgZpqRvE5SIawHSYG8EhVREEnE3oTRCM3t4gqa", clientKey: "GODfkqvlnbWiZh1YgVZKZjKQlw2dsTQoAsiaengx")
        
        var query = PFQuery(className:"todayspecial")
        
       query.getObjectInBackgroundWithId("H92lT2I3Dx") {
            
            (specialmeal: PFObject!, error: NSError!) -> Void in
            
            if error == nil {
                
                self.price.text = specialmeal["Price"] as NSString
                self.mealname.text = specialmeal["Meal"] as NSString
                
        //        if self.mealname == "" {
                    
        //            self.button1.enabled = false
        //
        //        }
                
                
            } else {
                
                NSLog("%@", error)
                
            }
            
        }
        
        var query2 = PFQuery(className:"todayspecial")
        
        query2.getObjectInBackgroundWithId("KgqTnIOYba") {
            
            (specialmeal: PFObject!, error: NSError!) -> Void in
            
            if error == nil {
                
                self.price2.text = specialmeal["Price"] as NSString
                self.mealname2.text = specialmeal["Meal"] as NSString
                
          //      if self.mealname2 == "" {
                    
          //          self.button1.enabled = false
                    
          //      }

                
            } else {
                
                NSLog("%@", error)
                
            }
            
        }
        
        var query3 = PFQuery(className:"todayspecial")
        
        query3.getObjectInBackgroundWithId("S1z0rvpTPQ") {
            
            (specialmeal: PFObject!, error: NSError!) -> Void in
            
            if error == nil {
                
                self.price3.text = specialmeal["Price"] as NSString
                self.mealname3.text = specialmeal["Meal"] as NSString
                
           //     if self.mealname3 == "" {
                    
           //         self.button1.enabled = false
                    
           //     }

                
            } else {
                
                NSLog("%@", error)
                
            }
            
        }
        
        
        
    }
    
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        sendOrderToParse("\(mealname.text!)")
        
    }
    
    @IBAction func buttonPressed2(sender: AnyObject) {
        
        sendOrderToParse("\(mealname2.text!)")
        
    }
    
    
    @IBAction func buttonPressed3(sender: AnyObject) {
        
        sendOrderToParse("\(mealname3.text!)")
        
    }
    

    
    
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
