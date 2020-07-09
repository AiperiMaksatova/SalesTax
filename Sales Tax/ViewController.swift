//
//  ViewController.swift
//  Sales Tax
//
//  Created by aiperi esenbay on 7/9/20.
//  Copyright © 2020 maksatova.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var salesTxt: UITextField!
    @IBOutlet weak var totalPriceLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLbl.text = ""
    }

    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTxt.text!)!
        
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        
        totalPriceLbl.text = "$\(totalPrice)"
    }
    
}

