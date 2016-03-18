//
//  AddDogViewController.swift
//  Dog Data
//
//  Created by Mihail Șalari on 18.03.2016.
//  Copyright © 2016 PlatinumCode. All rights reserved.
//

import UIKit
import RealmSwift

class AddDogViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var imputDogTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pickerView.delegate = self
        pickerView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: -UIPickerViewDataSource
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 99
    }
    
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row)"
    }
    
    
    //MARK: -@IBAction
    @IBAction func saveDetailsButtonPressed(sender: UIButton) {
        
        let dogAge = self.pickerView.selectedRowInComponent(0)
        let dogName = self.imputDogTextField.text!
        let dog = Dog(name: dogName, age: dogAge)
        Dog.instance.createItem(dog)
        
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
