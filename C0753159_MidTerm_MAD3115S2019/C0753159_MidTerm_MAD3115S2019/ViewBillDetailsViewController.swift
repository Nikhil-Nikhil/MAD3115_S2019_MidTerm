//
//  ViewBillDetailsViewController.swift
//  C0753159_MidTerm_MAD3115S2019
//
//  Created by User on 2019-07-12.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class ViewBillDetailsViewController: UIViewController {

    @IBOutlet weak var lblfullname: UILabel!
    
    @IBOutlet weak var lblemail: UILabel!
    
    @IBOutlet weak var lblTotalAmount: UILabel!
    
    @IBOutlet weak var lblphonenmber: UILabel!
    
    override func viewDidLoad() {
        let add = UIBarButtonItem(title: "Add ", style: UIBarButtonItem.Style.plain, target: self, action: #selector(goto))
        self.navigationItem.rightBarButtonItem = add
        super.viewDidLoad()
        
        lblfullname.text = MyPlistData.selectedCustomer?.fullName
        lblemail.text = MyPlistData.selectedCustomer?.emailId
        lblTotalAmount.text = "$\(String(describing: MyPlistData.selectedCustomer?.totalamount))"
        

        // Do any additional setup after loading the view.
    }
    @objc func goto(){
        
        let storyboard = UIStoryboard(name: "Main", bundle:nil)
        let billadd = storyboard.instantiateViewController(withIdentifier: "BillAdd")
        self.navigationController?.pushViewController(billadd, animated: true)
    
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
