//
//  ViewController.swift
//  PulsatorDemo
//
//  Created by Shaik Baji on 24/04/19.
//  Copyright © 2019 smartitventures.com. All rights reserved.
//

import UIKit

let kMaxRadius: CGFloat = 200
let kMaxDuration: TimeInterval = 10

class ViewController: UIViewController {
    @IBOutlet weak var sourceView: UIImageView!
    
    let pulsator = Pulsator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sourceView.layer.superlayer?.insertSublayer(pulsator, below: sourceView.layer)
        setupInitialValues()
        pulsator.start()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.layer.layoutIfNeeded()
        pulsator.position = sourceView.layer.position
    }
    
    private func setupInitialValues()
    {
        
        pulsator.numPulse = 5
        pulsator.radius = 0.7 * kMaxRadius
        pulsator.animationDuration = 0.5 * kMaxDuration
        pulsator.backgroundColor = UIColor.red.cgColor //init(displayP3Red: 38.0/255.0, green: 179.0/255.0, blue: 209.0/255.0, alpha:1.0) as! CGColor
        
        //countSlider.value = 5
        //        countChanged(sender: nil)
        //
        //        radiusSlider.value = 0.7
        //        radiusChanged(sender: nil)
        //
        //        durationSlider.value = 0.5
        //        durationChanged(sender: nil)
        //
        //        rSlider.value = 0
        //        gSlider.value = 0.455
        //        bSlider.value = 0.756
        //        aSlider.value = 1
        //        colorChanged(sender: nil)
    }
    
    // MARK: - Actions
    
    
    //you can specify the number of pulse by the property "numPulse"
    //pulsator.numPulse = Int(countSlider.value)
    
    
    
    //pulsator.radius = CGFloat(radiusSlider.value) * kMaxRadius
    //radiusLabel.text = String(format: "%.0f", pulsator.radius)
    
    
    
    //pulsator.animationDuration = Double(durationSlider.value) * kMaxDuration
    
    
    
    //pulsator.backgroundColor for background Color
    
    
    //pulsator.start()  for Animation to Start
    
    //pulsator.stop()  for Animation to Stop
    
}

