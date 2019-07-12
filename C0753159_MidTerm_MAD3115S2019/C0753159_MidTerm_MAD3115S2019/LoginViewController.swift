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
    private func getRememberMeValues() {
        let userDefault = UserDefaults.standard
        if let email = userDefault.string(forKey: "emailid") {
            Emailtxt.text = email
            if let password = userDefault.string(forKey: "password") {
               Passwordtxt.text = password
            }
        }
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
                
                if Switch.isOn{
                    userDefault.setValue(Emailtxt.text, forKey: "userEmail")
                    userDefault.set(Passwordtxt.text, forKey: "userPassword")
                }else {
                    userDefault.removeObject(forKey: "userEmail")
                    userDefault.removeObject(forKey: "userPassword")
                }
                
            }
        }
       else {
            let alert = UIAlertController(title: "Error", message: "Invalid email or Password", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
    }
           /* else
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
        
       */
    @IBAction func unWindlogoutFromAnyScreen(storyboardsegue: UIStoryboardSegue)
    {
        print("logout")
        let s = storyboardsegue.source as! LoginViewController
       Emailtxt.text = ""
        Passwordtxt.text = ""
    }


}
    

    



