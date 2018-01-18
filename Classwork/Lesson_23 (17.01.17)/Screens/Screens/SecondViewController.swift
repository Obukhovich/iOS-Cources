//
//  SecondViewController.swift
//  Screens
//
//  Created by Arthur Obukhovich on 1/17/18.
//  Copyright © 2018 Arthur Obukhovich. All rights reserved.
//

import Foundation
import UIKit

protocol SecondButtonDelegate: class {
    func buttonTappedTwo()
}
    
class SecondViewController: UIViewController {
    
    weak var delegateTwo: SecondButtonDelegate?
    
    @IBAction func secondClick(_ sender: UIButton) {
        delegateTwo?.buttonTappedTwo()
    }
}
