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
        pickerViewBillType.dataSource = self
        pickerViewBillType.delegate = self
        let customer = MyPlistData.customersArray[MyPlistData.selectedCustomer!]
        
      

}
/*class BillTypesViewController: UIViewController  ,UIPickerViewDelegate,UIPickerViewDataSource {
    
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return billType.count
        }
        
    @IBOutlet weak var billlabel: UILabel!
    @IBOutlet weak var billpicker: UIPickerView!
    @IBOutlet weak var lblBillTypes: UILabel!
    @IBOutlet weak var btnaddbill: UIButton!
       
        
        var billType = ["Hydro", "Internet", "Mobile"]
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            switch row {
            case 0:
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let Hydro = storyboard.instantiateViewController(withIdentifier: "Hydro")
                self.navigationController?.pushViewController(Hydro, animated: true)
            
            
            default:
                print()
            }
            weak var pickerViewBillType: UIPickerView!
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return billType[row]
        }
       
            
            // Do any additional setup after loading the view.
            pickerViewBillType.dataSource = self
            pickerViewBillType.delegate = self
            let customer = MyPlistData.customersArray[MyPlistData.selectedCustomer!]
            
            
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
    


    
func viewDidLoad() {
        super.viewDidLoad()
       

        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.billtype.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "BillAdd")
        cell.textLabel?.text = self.billtype[indexPath.row]
        return cell
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
*/
