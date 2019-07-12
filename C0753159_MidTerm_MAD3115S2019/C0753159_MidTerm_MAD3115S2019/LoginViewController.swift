//
//  ViewController.swift
//  C0753159_MidTerm_MAD3115S2019
//
//  Created by User on 2019-07-11.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var Emailtxt: UITextField!
    
    @IBOutlet weak var Passwordtxt: UITextField!
    
    @IBOutlet weak var Switch: UISwitch!
    
    @IBOutlet weak var RememberMe: UILabel!
    
    @IBOutlet weak var Login: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MyPlistData.readDataPlist()
        // Do any additional setup after loading the view.
    }

    @IBAction func LoginActionTapped(_ sender: Any)
    {
        
        let email = self.Emailtxt.text!
        let password = self.Passwordtxt.text!
        
        if let pass = MyPlistData.userDict[email]
        {
            //USER EXIST
            if ( password == pass )
            {
                // CORRECT INFO -> NEXT SCREEN
                //UserDefaults.standard.set(true, forKey: "isUserLoggedin")
                //UserDefaults.standard.synchronize()
                //self.dismiss(animated: true, completion: nil)
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let vc = sb.instantiateViewController(withIdentifier: "Table")
                
                self.present(vc, animated: true)
                
            }
            else
            {
                let alert = UIAlertController(title: "Error", message: "User Email / Password Incorrect", preferredStyle: UIAlertController.Style.alert)
                
                let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                let actionCanel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(actionOk)
                alert.addAction(actionCanel)
                self .present(alert, animated: true ,completion: nil)
                // INCORRECT INFO
            }
        }
        else
        {
            //USER NOT EXIST
            let alert = UIAlertController(title: "Error", message: "User doesnot exit", preferredStyle: UIAlertController.Style.alert)
            
            let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            let actionCanel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(actionOk)
            alert.addAction(actionCanel)
            self .present(alert, animated: true ,completion: nil)
        }
        
    }
    
    
}
    


/*
 let alert = UIAlertController(title: "Error", message: "User Email / Password Incorrect", preferredStyle: UIAlertController.Style.alert)
 
 let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
 let actionCanel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
 alert.addAction(actionOk)
 alert.addAction(actionCanel)
 self .present(alert, animated: true ,completion: nil)
 */
