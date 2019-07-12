//
//  AddNewBillViewController.swift
//  C0753159_MidTerm_MAD3115S2019
//
//  Created by User on 2019-07-12.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class AddNewBillViewController: UIViewController {

    @IBOutlet weak var txtfirstname: UITextField!
    @IBOutlet weak var txtlastname: UITextField!
    @IBOutlet weak var txtemail: UITextField!
    @IBOutlet weak var txtphone: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let add = UIBarButtonItem(title: "Add Customer", style: UIBarButtonItem.Style.plain, target: self, action: #selector(back))
self.navigationItem.rightBarButtonItem = add
        // Do any additional setup after loading the view.
    }
    @objc func back()
    {
        if txtfirstname.text! == ""
            {
                let alert = UIAlertController(title: "Error", message: "please enter firstname", preferredStyle: .alert)
                
                let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
                
                alert.addAction(okButton)
                
                self.present(alert, animated: true)
        }
        else if txtlastname.text! == ""
        {
            let alert = UIAlertController(title: "Error", message: "please enter lastname", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(okButton)
            
            self.present(alert, animated: true)
        }
        else if txtemail.text! == ""
        {
            let alert = UIAlertController(title: "Error", message: "please enter email", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(okButton)
            
            self.present(alert, animated: true)
        }
        if txtfirstname.text! == ""
        {
            let alert = UIAlertController(title: "Error", message: "please enter firstname", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(okButton)
            
            self.present(alert, animated: true)
        }
        else{
            do{
            var customer = try Customer(customerid: 1, firstname: txtfirstname.text!, lastname: txtlastname.text!, emailid: txtemail.text!,phonenumber: txtphone.text!, billarray: [])
                
                MyPlistData.customersArray.append(customer)
            }
            catch
            {
                let alert = UIAlertController(title: "Error", message: "Unexpected Error", preferredStyle: .alert)
                
                let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
                
                alert.addAction(okButton)
                
                self.present(alert, animated: true)
            }
            self.navigationController?.popViewController(animated: true)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
