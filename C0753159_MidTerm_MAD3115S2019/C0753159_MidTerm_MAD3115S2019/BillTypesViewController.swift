//
//  BillTypesViewController.swift
//  C0753159_MidTerm_MAD3115S2019
//
//  Created by User on 2019-07-12.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class BillTypesViewController: UIViewController {

    @IBOutlet weak var billlabel: UILabel!
    @IBOutlet weak var billpicker: UIPickerView!
    @IBOutlet weak var lblBillTypes: UILabel!
    @IBOutlet weak var btnaddbill: UIButton!
    var billtype = ["Hydro","Internet","Mobile"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addbillaction(_ sender: Any) {
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
