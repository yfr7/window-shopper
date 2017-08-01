//
//  ViewController.swift
//  window-shoopper
//
//  Created by Yves Fernandes on 7/31/17.
//  Copyright © 2017 Kartech LDA. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        hideLbls()
        
    }

    @objc func calculate(){
        if let wageValue = wageTxt.text, let priceValue = priceTxt.text {
            if let wage = Double(wageValue), let price = Double(priceValue) {
                view.endEditing(true)
                resultLbl.text = "\(Wage.getHours(forWage: wage, forPrice: price))"
                showLbls()
            }
            
        }
    }
    @IBAction func clearCalcPressed(_ sender: Any) {
        hideLbls()
        
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
    func hideLbls (){
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    func showLbls() {
        resultLbl.isHidden = false
        hoursLbl.isHidden = false
    }
    

}

