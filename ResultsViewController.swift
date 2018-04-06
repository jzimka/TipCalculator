//
//  ResultsViewController.swift
//  TipCalculator
//
//  Created by Joe Zimka on 7/24/17.
//  Copyright © 2017 Joe Zimka. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var eachPersonsTipLabel: UILabel!
    @IBOutlet weak var eachPersonShouldPayLabel: UILabel!
    
    var passedTipPercentage: Double=0.0000
    var passedSplitAmount: Int = 1
    var passedBillAmount: Double=0.0000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tipAmount = (passedBillAmount * passedTipPercentage)/Double(passedSplitAmount)
        let billTotal = passedBillAmount/Double(passedSplitAmount) + tipAmount
        eachPersonsTipLabel.text = "$\(tipAmount)"
        eachPersonShouldPayLabel.text = "$\(billTotal)"
        
        
    }

   
}
