//
//  SelectedModelViewController.swift
//  porscheseguetransitions
//
//  Created by Amarpreet Cheema on 2018-12-13.
//  Copyright © 2018 Amar Cheema. All rights reserved.
//

import UIKit

protocol SelectedModelDelegate {
    func selectedModel(picked: String)
}


class SelectedModelViewController: UIViewController {
    
    var delegateForSelectedCar: SelectedModelDelegate?
    
    @IBOutlet weak var selectedModelChasis: UILabel!
    @IBOutlet weak var selectedModelYears: UILabel!
    @IBOutlet weak var selectedModelBaseEngine: UILabel!
    @IBOutlet weak var selectedModelHP: UILabel!
    
   var carModel: Model911?  //acts a the connector
    
    func updateLabels() {  //update labels for vehicle selected in the previous VC
        selectedModelChasis.text = carModel?.chasis
        selectedModelBaseEngine.text = carModel?.baseEngine
        selectedModelHP.text = carModel?.hp
        selectedModelYears.text = carModel?.years
    }
    
    
    @IBAction func selectedModelRead(_ sender: Any) {
        
        if delegateForSelectedCar != nil {
            if carModel?.chasis == "996" {
                print("996 selected")
               delegateForSelectedCar!.selectedModel(picked: "996")
            }
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
    }

}
