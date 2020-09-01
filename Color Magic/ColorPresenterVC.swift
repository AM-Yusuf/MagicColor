//
//  ColorPresenterVC.swift
//  Color Magic
//
//  Created by Kalani Poomaihealani on 1/28/18.
//  Copyright © 2018 AM-Yusuf. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDeligate {

    @IBOutlet weak var colorLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorLbl.text = colorName
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC"{
            guard let colorPickerVC = segue.destination as? ColorPickerVC else {return}
            
            colorPickerVC.delegate = self
        }
    
    }


}

