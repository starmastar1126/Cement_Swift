//
//  ViewController.swift
//  3
//
//  Created by Tyler Smith on 10/12/19.
//  Copyright © 2019 Tyler Smith. All rights reserved.
//
import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var CementValue: UITextField!
    @IBOutlet weak var FlyAshValue: UITextField!
    @IBOutlet weak var CoarseValue: UITextField!
    @IBOutlet weak var MoistValue: UITextField!
    @IBOutlet weak var FineValue: UITextField!
    @IBOutlet weak var Moist2Value: UITextField!
    @IBOutlet weak var WaterValue: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var result2Label: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calculateButton.layer.borderColor = UIColor.darkGray.cgColor
    }
    @IBAction func calculate(_ sender: Any) {
        let cementValue = Double(CementValue.text!)
        let flyAshValue = Double(FlyAshValue.text!)
        let coarseValue = Double(CoarseValue.text!)
        let moistValue = Double(MoistValue.text!)
        let fineValue = Double(FineValue.text!)
        let moist2Value = Double(Moist2Value.text!)
        let waterValue = Double(WaterValue.text!)
        let C06 = cementValue! + flyAshValue!
        let C11 = (moistValue! / 100) + 1
        let C16 = (moist2Value! / 100) + 1
        let D10 = coarseValue! / C11
        let D15 = fineValue! / C16
        let E10 = coarseValue! - D10
        let E15 = fineValue! - D15
        let E18 = waterValue! * 8.33
        let E21 = round(10000 * (E10 + E15 + E18)) / 10000
        let result = round(1000000 * (E21 / C06)) / 1000000
        
        resultLabel.text = "The W/C ratios is \(result)"
    }
}
