//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Michael Henry on 3/13/16.
//  Copyright © 2016 Digital Javelina, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var converterSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertTemp(sender: AnyObject) {
        let fahrenheit = String(format: "%3.1f", converterSlider.value) // in %3.1f, the number before and after the decimal is the number of places allowed
        fahrenheitLabel.text = fahrenheit
        let celsius = String(format: "%3.1f", ((Double(CGFloat(converterSlider.value) - 32) / 1.8)))
        celsiusLabel.text = celsius
        

    }

}

