//
//  ViewController.swift
//  AutoLayout:3
//
//  Created by Trần Đức Anh on 3/16/19.
//  Copyright © 2019 Trần Đức Anh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arrYear = [Int](1985...2000)
    var arrMonth = [Int](1...12)
    
    
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet var arrBtn: [UIButton]!
    @IBOutlet weak var yearBtn: UIButton!
    @IBOutlet weak var monthBtn: UIButton!
    @IBOutlet weak var dayBtn: UIButton!
    @IBOutlet var arrBtnCalender: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    
    
    @IBAction func onClickBtn(_ sender: UIButton) {
        guard sender.isSelected == false else {
            sender.isSelected = false
            return
        }
        for button in arrBtn {
            button.isSelected = false
        }
        sender.isSelected = true
    }
    
    @IBAction func onClickBtnDate(_ sender: UIButton) {
        
        guard sender.isSelected == true else {
            yearBtn.setTitle(String(arrYear.count), for: .normal)
            return
        }
//        for button in arrBtnCalender {
//            button.isSelected = false
//        }
//        sender.isSelected = true
    }
    
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        if yearBtn.isSelected == true {
//            return arrYear.count
//        } else if monthBtn.isSelected == true {
//                return arrMonth.count
//            }
        
        return arrYear.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        if yearBtn.isSelected == true {
//            return String(arrYear[row])
//        } else {
//            if monthBtn.isSelected == true {
//                return String(arrMonth[row])
//            }
//        }

        return String(arrYear[row])
    }
    
}
