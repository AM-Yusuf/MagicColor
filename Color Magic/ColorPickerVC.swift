//
//  ColorPickerVC.swift
//  Color Magic
//
//  Created by Kalani Poomaihealani on 1/28/18.
//  Copyright © 2018 AM-Yusuf. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    var delegate: ColorTransferDeligate? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func colorBtnWasPressed (sender:UIButton){
        if delegate != nil {
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: (sender.titleLabel?.text)!)
        self.navigationController?.popViewController(animated: true)
        }
        
    }
    

}
