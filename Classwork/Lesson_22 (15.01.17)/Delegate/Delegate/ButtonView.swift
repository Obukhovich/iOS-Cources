//
//  ButtonView.swift
//  Delegate
//
//  Created by Arthur Obukhovich on 1/15/18.
//  Copyright © 2018 Артур Обухович. All rights reserved.
//

import Foundation
import UIKit

protocol ClickDelegate: class {
    func clickButton()
}

class Button: UIView {
    
    @IBOutlet var button: UIButton!
    weak var delegate: ClickDelegate?
    
    override init(frame: CGRect) {
        button = UIButton()
        super.init(frame: frame)
        
        self.addSubview(button)
    
}
    
    @objc func tapped() {
        delegate?.clickButton()
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


