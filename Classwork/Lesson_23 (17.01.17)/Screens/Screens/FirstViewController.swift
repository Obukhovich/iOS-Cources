//
//  FirstViewController.swift
//  Screens
//
//  Created by Arthur Obukhovich on 1/17/18.
//  Copyright © 2018 Arthur Obukhovich. All rights reserved.
//

import Foundation
import UIKit

protocol FirstButtonDelegate: class {
    func buttonTappedOne()
}

class FirstViewContriew: UIViewController {
    
    weak var delegateOne: FirstButtonDelegate?
    
    @IBAction func firstClick(_ sender: UIButton) {
         delegateOne?.buttonTappedOne()
    }
    
}
