//
//  ViewController.swift
//  Delegate
//
//  Created by Arthur Obukhovich on 1/15/18.
//  Copyright © 2018 Артур Обухович. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var button = Button()
    var label = Label()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        view.addSubview(label)
        
        button.delegate = label
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
