//
//  HydroViewController.swift
//  C0753159_MidTerm_MAD3115S2019
//
//  Created by User on 2019-07-12.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class HydroViewController: UIViewController {

    @IBOutlet weak var txtAgency: UITextField!
    @IBOutlet weak var txtunitConsumed: UITextField!
    @IBOutlet weak var txtTotalAmount: UITextField!
    
    @IBOutlet weak var lbldate: UILabel!
    
    
    @IBOutlet weak var Datepicker: UIDatePicker!
    let DatePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let customer = MyPlistData.selectedCustomer!
        
       
        
        let barButtonDone = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(performAdd))
        self.navigationItem.rightBarButtonItem = barButtonDone
        
        
        DatePicker.datePickerMode = .date
        
       }
    
    
    @objc func performAdd(sender:UIBarButtonItem)
    {
        if (DatePicker.next == "" || txtAgency.text == "" || txtTotalAmount.text == "" || txtunitConsumed.text == "")
        {
            let alertController = UIAlertController(title: "Error", message: "Please Fill All the values.", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(action)
            self.present(alertController, animated: true)
        }
        else
        {
            let customer = MyPlistData.selectedCustomer!
            let date = DateFormatter()
            date.dateFormat = "dd-MM-YY"
            let bill = Hydro(billDate: date.date(from: getdate.text!)!, agencyName: txtAgency.text!, unitsConsumed: (txtunitConsumed.text! as NSString).integerValue , totalAmount: (txtTotalAmount.text! as NSString).floatValue)
            customer.addBill(bill: bill)
            
           
            
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

    

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


