//
//  Label.swift
//  Delegate
//
//  Created by Arthur Obukhovich on 1/15/18.
//  Copyright © 2018 Артур Обухович. All rights reserved.
//

import Foundation
import UIKit

class Label: UIView, ClickDelegate {
    
    @IBOutlet var label: UILabel!
    var startNumber = 0
    
    override init(frame: CGRect) {
        label = UILabel()
        super.init(frame: frame)
        
        self.addSubview(label)
    }
    
    func clickButton() {
        startNumber += 1
        label.text = String(startNumber)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
