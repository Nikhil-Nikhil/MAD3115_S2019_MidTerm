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
         Switch.isOn = false
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
                let userDefault = UserDefaults.standard
                MyPlistData.GetCustomer()
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let vc = sb.instantiateViewController(withIdentifier: "Table")
                let nc = UINavigationController(rootViewController: vc)
                
                self.present(nc, animated: true)
                
                if Switch.isOn
                {
                    
                    userDefault.setValue(Emailtxt.text, forKey: "emailid")
                    userDefault.set(Passwordtxt.text, forKey: "password")
                }
                else
                {
                    userDefault.removeObject(forKey: "emailid")
                    userDefault.removeObject(forKey: "password")
                }
            }
            else
            {
                let alert = UIAlertController(title: "Error", message: "Try again, User Email / Password Invalid", preferredStyle: .alert)
                
                let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
                
                alert.addAction(okButton)
                
                self.present(alert, animated: true)
            }
        
            }
            else
            {
                let alert = UIAlertController(title: "Error", message: "User does not exist", preferredStyle: UIAlertController.Style.alert)
                
                let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                let actionCanel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(actionOk)
                alert.addAction(actionCanel)
                self .present(alert, animated: true ,completion: nil)
                // INCORRECT INFO
            }
        
       
    }/*
    @IBAction func unWindLogoutFromAnyScreen(storyboardSegue: UIStoryboardSegue) {
        let L = storyboardSegue.source as! LoginViewController
       Passwordtxt.text = ""
       Emailtxt.text = ""
    }*/
}
    
    

    



