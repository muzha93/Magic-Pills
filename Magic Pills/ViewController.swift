//
//  ViewController.swift
//  Magic Pills
//
//  Created by luka on 10/10/2016.
//  Copyright © 2016 luka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var buyNowBtn: UIButton!
    
    
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var countryTextHolder: UITextField!
    
    @IBOutlet weak var zipCodeLabel: UILabel!
    
    @IBOutlet weak var zipCodeTextHolder: UITextField!
    
    
    
    let states = ["Alaska", "Alabama", "Croatia", "Bulgaria", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryTextHolder.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeTextHolder.isHidden = true
    }
    
    @IBAction func buyNowBtnPressed(_ sender: AnyObject) {
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTextHolder.isHidden = false
        zipCodeLabel.isHidden = false
        zipCodeTextHolder.isHidden = false
    }

}

