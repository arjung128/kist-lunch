//
//  LoginViewController.swift
//  KIST
//
//  Created by Ashish Gupta on 1/18/15.
//  Copyright (c) 2015 Example. All rights reserved.
//

import UIKit

var userfirstname = ""
var userlastname = ""
var usergrade = ""
var useremail = ""

class LoginViewController: UIViewController {

    
    @IBOutlet weak var fname: UITextField!
    
    @IBOutlet weak var lname: UITextField!
    
    @IBOutlet weak var grade: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var message: UILabel!
    
    
    @IBAction func buttonPressed(sender: AnyObject) {
    
        Parse.setApplicationId("FCwgZpqRvE5SIawHSYG8EhVREEnE3oTRCM3t4gqa", clientKey: "GODfkqvlnbWiZh1YgVZKZjKQlw2dsTQoAsiaengx")
        
        var query = PFQuery(className:"Users")
        
        query.whereKey("email", equalTo: email.text)
        query.getFirstObjectInBackgroundWithBlock {
            (xxx: PFObject!, error: NSError!) -> Void in
            if error != nil {
                self.message.text = "This email address doesn't exist."
            } else {
                // The find succeeded.
                let y = xxx["fname"]
                
                
                if y as NSString == self.fname.text {
                    
                    let lastname = xxx["lname"]
                    
                    if lastname as NSString == self.lname.text {
                        
                        let grade = xxx["grade"]
                        
                        if grade as NSString == self.grade.text {
                            
                            self.message.text = "User successfully registered!"
                            
                            userfirstname = self.fname.text
                            userlastname = self.lname.text
                            usergrade = self.grade.text
                            useremail = self.email.text
                            
                            self.performSegueWithIdentifier("segue1", sender: nil)
                            
                        } else {
                            
                            self.message.text = "Grade does not match other details."
                            
                        }
                        
                        
                    } else {
                        
                        self.message.text = "Last name does not match other detais."
                        
                    }
                    
                } else {
                    
                    self.message.text = "First Name do not match other details."
                    
                }
                
            }
        }
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
        
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        email.resignFirstResponder()
        fname.resignFirstResponder()
        lname.resignFirstResponder()
        grade.resignFirstResponder()
        return true
        
    }

}
