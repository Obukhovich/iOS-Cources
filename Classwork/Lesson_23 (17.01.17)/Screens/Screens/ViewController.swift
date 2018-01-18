//
//  ViewController.swift
//  Screens
//
//  Created by Arthur Obukhovich on 1/17/18.
//  Copyright © 2018 Arthur Obukhovich. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FirstButtonDelegate, SecondButtonDelegate {
 
    var startNumberOne = 0
    var startNumberTwo = 0

    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var labelTwo: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let firstScreen = segue.destination as? FirstViewContriew
        firstScreen?.delegateOne = self
        let secondScreen = segue.destination as? SecondViewController
        secondScreen?.delegateTwo = self
    }
    
    func buttonTappedOne() {
        startNumberOne += 1
        labelOne.text = String(startNumberOne)
    }
    
    func buttonTappedTwo() {
        startNumberTwo += 1
        labelTwo.text = String(startNumberTwo)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

