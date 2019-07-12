//
//  BillTypesViewController.swift
//  C0753159_MidTerm_MAD3115S2019
//
//  Created by User on 2019-07-12.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit
class BillTypesViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource{
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return billTypes.count
    }
    
    @IBOutlet weak var billlabel: UILabel!
    @IBOutlet weak var billpicker: UIPickerView!
    @IBOutlet weak var lblBillTypes: UILabel!
    @IBOutlet weak var btnaddbill: UIButton!
    var billTypes = ["Hydro", "Internet", "Mobile"]
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row {
        case 0:
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let hydro = storyboard.instantiateViewController(withIdentifier: "Hydro")
            self.navigationController?.pushViewController(hydro, animated: true)
        case 1:
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let hydro = storyboard.instantiateViewController(withIdentifier: "Internet")
            self.navigationController?.pushViewController(hydro, animated: true)
        case 2:
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let hydro = storyboard.instantiateViewController(withIdentifier: "Mobile")
            self.navigationController?.pushViewController(hydro, animated: true)
        default:
            print()
        }
        
    }
    @IBOutlet weak var pickerViewBillType: UIPickerView!
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return billTypes[row]
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        billpicker.dataSource = self
        billpicker.delegate = self
        let customer = MyPlistData.selectedCustomer!
        
        
      

}

   /* @IBAction func addbillaction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let hydro = storyboard.instantiateViewController(withIdentifier: "Hydro")
        self.navigationController?.pushViewController(hydro, animated: true)
    }
    */
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


