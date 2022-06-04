//
//  AJCCViewController.swift
//  Endo Pretty
//
//  Created by Johnson Thomas on 1/20/18.
//  Copyright © 2018 Johnson Thomas. All rights reserved.
//

import UIKit

class AJCCViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var AgeTxt: UITextField!
    @IBOutlet var TumorTxt: UITextField!
    
    @IBOutlet var Metasis: UISegmentedControl!
    @IBOutlet var Invasion: UISegmentedControl!
    @IBOutlet var Resection: UISegmentedControl!
    @IBOutlet var LymphNode: UISegmentedControl!
    
    @IBOutlet var ThyroidExt: UIPickerView!
   
    @IBOutlet var StageTxt: UITextField!
    @IBOutlet var macisScoreTxt: UITextField!
    
    
    var age : Float = 0
    var tumorSize : Float = 0
    var stage : String = ""
    var score : Float = 0
    var component : Int = 0
    
    var Array1 = ["None", "Only Strap Muscle", "SubQ, larynx,trachea,esophagus,rec laryngeal N", "Prevertebral fascia,encasing major vessels"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
            return Array1[row]

    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       
            return Array1.count
     
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var pickerLabel: UILabel? = (view as? UILabel)
        if pickerLabel == nil {
            pickerLabel = UILabel()
            pickerLabel?.font = UIFont(name: "System", size: 6)
            pickerLabel?.textAlignment = .center
            
        }
        
        pickerLabel?.text = Array1[row]
        pickerLabel?.textColor = UIColor.blue
        return pickerLabel!
    }
    
  /*
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    }
 */
    
    
    @IBAction func Calculate(_ sender: Any) {
        
        score = 0
        
        if (Float(AgeTxt.text!) == nil)
        {
            AgeTxt.text = ""
            StageTxt.text = ""
            macisScoreTxt.text = ""
            
            return
        }
        else
        {
            age = Float(AgeTxt.text!)!
        }
        
        if (Float(TumorTxt.text!) == nil)
        {
            TumorTxt.text = ""
            StageTxt.text = ""
            macisScoreTxt.text = ""
            
            return
        }
        else
        {
            tumorSize = Float(TumorTxt.text!)!
        }
        
        //finding stage
        
        if (age < 55)
        {
            if (Metasis.selectedSegmentIndex == 0)
            {
                stage = "I"
            }
            else
            {
                stage = "II"
            }
        }
        else
        {
            if (Metasis.selectedSegmentIndex == 1)
            {
                stage = "IV B"
            }
            else
            {
                if (ThyroidExt.selectedRow(inComponent: component) == 0)
                {
                    if (tumorSize <= 4)
                    {
                        if (LymphNode.selectedSegmentIndex == 0)
                        {
                            stage = "I"
                        }
                        else if (LymphNode.selectedSegmentIndex == 3)
                        {
                            stage = "I"
                        }
                        else if(LymphNode.selectedSegmentIndex == 1)
                        {
                           stage = "II"
                        }
                        else if(LymphNode.selectedSegmentIndex == 2)
                        {
                            stage = "II"
                        }
                    }
                    else
                    {
                        stage = "II"
                    }
                }
                else if (ThyroidExt.selectedRow(inComponent: component) == 1)
                {
                    stage = "II"
                }
                else if (ThyroidExt.selectedRow(inComponent: component) == 2)
                {
                    stage = "III"
                }
                else if (ThyroidExt.selectedRow(inComponent: component) == 3)
                {
                    stage = "IV A"
                }
            }
        }
        
        StageTxt.text = stage
        
        // MACIS score calculation
        
        if (age < 40)
        {
            score = score + 3.1
        }
        else
        {
            score = score + (0.08
            * age)
        }
        score = score + (0.3 * tumorSize)
        if (Resection.selectedSegmentIndex == 1)
        {
            score = score + 1
        }
        
        if (Invasion.selectedSegmentIndex == 1)
        {
            score = score + 1
        }
        if (Metasis.selectedSegmentIndex == 1)
        {
            score = score + 3
        }
        
        macisScoreTxt.text = String(score)
        
 
    }
    
  
    @IBAction func hideKeyboard(_ sender: Any) {
        AgeTxt.resignFirstResponder()
        TumorTxt.resignFirstResponder()
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        AgeTxt.resignFirstResponder()
        TumorTxt.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ThyroidExt.delegate = self
        ThyroidExt.dataSource = self
        
       
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
