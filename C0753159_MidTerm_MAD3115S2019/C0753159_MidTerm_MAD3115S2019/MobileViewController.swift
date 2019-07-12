//
//  MobileViewController.swift
//  C0753159_MidTerm_MAD3115S2019
//
//  Created by User on 2019-07-12.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class MobileViewController: UIViewController {

    @IBOutlet weak var providername: UITextField!
    
    @IBOutlet weak var datepicker: UIDatePicker!
    @IBOutlet weak var date: UILabel!
    @IBOutlet var minuteused: UIView!
    @IBOutlet weak var internetgbused: UITextField!
    @IBOutlet weak var planename: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
