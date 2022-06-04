//
//  CalcitonDoublingViewController.swift
//  Endo Pretty
//
//  Created by Johnson Thomas on 1/15/18.
//  Copyright © 2018 Johnson Thomas. All rights reserved.
//

import UIKit


class CalcitonDoublingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    
    @IBOutlet var DateTxt: UITextField!
    @IBOutlet var MarkerTxt: UITextField!
    
    @IBOutlet var datePicker: UIDatePicker!
    
    @IBOutlet var dateMarkerTable: UITableView!
    
    @IBOutlet var YearsTxt: UITextField!
    @IBOutlet var MonthsTxt: UITextField!
    
    
    var dateArray = [String]()
    var markerArray = [Float]()
    var dateFormatter = DateFormatter()
    
    var newDate = Date()
    
    
    var dateXArray = [Date]()
    var daysXArray = [Int]()
    var YArray = [Float]()
   
    var XAvg : Float = 0
    var YAvg : Float = 0
    var XYAvg : Float = 0
    var XXAvg : Float = 0
    
    
    var daysListArray = [Date]()
    var slope : Float = 0

    var timeYear : Float = 0
    var timeMonth : Float = 0
    
    
    @IBAction func displayDate(_ sender: Any) {
        dateFormatter.dateFormat = "MM/dd/yyyy"
        
        let dateString = dateFormatter.string(from: datePicker.date)
       DateTxt.text = dateString
    
        newDate =  datePicker.date
        
        
      
    }
    @IBAction func dateMarkerSave(_ sender: Any) {
        
        MarkerTxt.resignFirstResponder()
        dateArray.append(DateTxt.text!)
        dateXArray.append(newDate)
        
        
        if Float (MarkerTxt.text!) == nil{
            MarkerTxt.text = ""
            return
        }
        else
        {
            markerArray.append(Float (MarkerTxt.text!)!)
       
        }
        
       // print (dateArray)
       // print(dateXArray)
       // print(markerArray)
        
        dateMarkerTable.reloadData()
        
    }
    
    
    @IBAction func doublingCalculator(_ sender: Any) {
        
        if (dateXArray.count < 4)
        {
            YearsTxt.text = ""
            MonthsTxt.text = ""
            return
        }
        
        // Entering X axis array
     
        for value in dateXArray
        {
            let dateA = dateXArray[0]
            let dateB =  value
            
            let difference = printCountBtnTwoDates(mStartDate: dateA, mEndDate: dateB)
        
        
            daysXArray.append(difference)
           
        }
       // print (daysXArray)
        
        // Entering Y axis array
        for value in markerArray
        {
            YArray.append(log10(value))
        }
        
       // print (YArray)
        
      // finding XAvg , YAVg, XYAvg and XXAvg
        for index in 1...dateXArray.count {
            XAvg = XAvg + Float(daysXArray[index - 1])
            YAvg = YAvg + YArray[index - 1]
            
            XYAvg = XYAvg + (Float(daysXArray[index - 1]) * (YArray[index - 1]))
            XXAvg = XXAvg + ((Float(daysXArray[index - 1])) * (Float(daysXArray[index - 1])))
            
            
        }
        XAvg = XAvg / Float ((dateXArray.count))
        YAvg = YAvg / Float ((dateXArray.count))
        XYAvg = XYAvg / Float ((dateXArray.count))
        XXAvg = XXAvg / Float ((dateXArray.count))
      
      // finding slope
        
       slope = ((XAvg * YAvg) - XYAvg) / ( (XAvg * XAvg) - XXAvg)
       slope = ((slope * 1000000).rounded(.toNearestOrAwayFromZero))/1000000
        
 

      // print ("slope , ", slope)
        
      // finding doubling time
        
        timeYear = ((log10(2)) / slope ) / 365
       
        timeYear = ((timeYear * 100).rounded(.toNearestOrAwayFromZero))/100
        
        timeMonth = timeYear * 365 / 30
        
        timeMonth = ((timeMonth * 10).rounded(.toNearestOrAwayFromZero))/10
        
        YearsTxt.text = String (timeYear)
        MonthsTxt.text = String (timeMonth)
    }
    
    
    func printCountBtnTwoDates(mStartDate: Date, mEndDate: Date) -> Int {
        let calendar = Calendar.current
        //let formatter = DateFormatter()
        var newDate = mStartDate
        daysListArray.removeAll()
        
        while newDate <= mEndDate {
         
            daysListArray.append(newDate)
            newDate = calendar.date(byAdding: .day, value: 1, to: newDate)!
        }
       
        return daysListArray.count
    }

    
    @IBAction func resetButton(_ sender: Any) {
        
        dateArray.removeAll()
        dateXArray.removeAll()
        markerArray.removeAll()
        daysXArray.removeAll()
        YArray.removeAll()
       
        XAvg = 0
        YAvg = 0
        XYAvg = 0
        XXAvg = 0
        slope = 0
        
        timeMonth = 0
        timeYear = 0
        YearsTxt.text = ""
        MonthsTxt.text = ""
        MarkerTxt.text = ""
        DateTxt.text = ""
        
        dateMarkerTable.reloadData()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MarkerTxt.delegate = self
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(CalcitonDoublingViewController.dismissKeyboard)))
    }
    
    
    
   func dismissKeyboard(){
    
        MarkerTxt.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        MarkerTxt.resignFirstResponder()
        
        return true
    }
    
    override func viewDidAppear(_ animated: Bool) {
       // super.viewDidAppear(animated)
        dateMarkerTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dateArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dateMarkerTable.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = self.dateArray[indexPath.row]
        cell?.detailTextLabel?.text = "\(self.markerArray[indexPath.row])"
        return cell!
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
