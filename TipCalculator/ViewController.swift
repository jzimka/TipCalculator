//
//  ViewController.swift
//  TipCalculator
//
//  Created by Joe Zimka on 7/24/17.
//  Copyright © 2017 Joe Zimka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var splitCountLabel: UILabel!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var fifteenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var twentyFiveButton: UIButton!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    var billAmount: Double = 0
    var splitCount: Int = 1
    var tipPercentage: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmountTextField.delegate = self
    }
    
    @IBAction func tenButtonTapped(_ sender: UIButton)
    {   tenButton.setImage(UIImage(named: "10_selected_image"), for: .normal)
        tipPercentage=0.10
    }
    @IBAction func fifteenButtonTapped(_ sender: UIButton)
    {fifteenButton.setImage(UIImage(named: "15_selected_image"), for: .normal)
        tipPercentage=0.15
    }
    @IBAction func twentyButtonTapped(_ sender: UIButton)
    {twentyButton.setImage(UIImage(named: "20_selected_image"), for: .normal)
        tipPercentage=0.20
    }
    @IBAction func twentyFiveButtonTapped(_ sender: UIButton)
    {twentyFiveButton.setImage(UIImage(named: "25_selected_image"), for: .normal)
        tipPercentage=0.25
    }
    @IBAction func upButtonTapped(_ sender: UIButton)
    {splitCount=splitCount+1
        splitCountLabel.text=String(splitCount)
        
    }
    @IBAction func downButtonTapped(_ sender: UIButton)
    {if splitCount > 1 {
        splitCount=splitCount-1
        splitCountLabel.text=String(splitCount)}
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        billAmount = Double(billAmountTextField.text!)!
        let nvc = segue.destination as! ResultsViewController
        nvc.passedBillAmount = billAmount
        nvc.passedSplitAmount = splitCount
        nvc.passedTipPercentage = tipPercentage}
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false}
    
    }
