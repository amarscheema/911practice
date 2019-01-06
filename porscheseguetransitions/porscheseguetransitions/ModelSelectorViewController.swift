//
//  ModelSelectorViewController.swift
//  porscheseguetransitions
//
//  Created by Amarpreet Cheema on 2018-12-13.
//  Copyright © 2018 Amar Cheema. All rights reserved.
//

import UIKit


class ModelSelectorViewController: UIViewController, SelectedModelDelegate {
    
    var model996 = Model911(chasis: "996", years: "1997 to 2006", baseEngine: "3.4L", hp: "296")
    var model997 = Model911(chasis: "997", years: "2004–2012", baseEngine: "3.6", hp: "321")
    var model991 = Model911(chasis: "991", years: "2011 - 2020", baseEngine: "3.6", hp: "400")
    var model992 = Model911(chasis: "992", years: "Future", baseEngine: "3.8", hp: "420")

    
   //IBActions
    
    @IBAction func button996Pressed(_ sender: Any) {
    }
    @IBAction func button997Pressed(_ sender: Any) {
    }
    @IBAction func button991Pressed(_ sender: Any) {
    }
    @IBAction func button992Pressed(_ sender: Any) {
    }
    @IBAction func resetViewed(_ sender: Any){
        resetViewed()
}
    
    func resetViewed() {
        print("reset view")
        viewed996.text = "No"
        viewed997.text = "No"
        viewed991.text = "No"
        viewed992.text = "No"
    }

   // var picked: String?
    
    //IBOutlets
    
    @IBOutlet weak var viewed996: UILabel!
    @IBOutlet weak var viewed997: UILabel!
    @IBOutlet weak var viewed991: UILabel!
    @IBOutlet weak var viewed992: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetViewed()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "to996"{
            
            let carModel = model996
            
            if let sendCarTOSelectedModelVC: SelectedModelViewController = segue.destination as? SelectedModelViewController{
                sendCarTOSelectedModelVC.carModel = carModel
                sendCarTOSelectedModelVC.delegateForSelectedCar = self

            }
        }
            else if segue.identifier == "to997" {
            
                let carModel = model997
                if let sendCarTOSelectedModelVC: SelectedModelViewController = segue.destination as? SelectedModelViewController{
                    sendCarTOSelectedModelVC.carModel = carModel
            }
        }
            else if segue.identifier == "to991" {
            
                let carModel = model991
                if let sendCarTOSelectedModelVC: SelectedModelViewController = segue.destination as? SelectedModelViewController{
                        sendCarTOSelectedModelVC.carModel = carModel
                    
            }
        }
            
            else if segue.identifier == "to992" {
                let carModel = model992
                if let sendCarTOSelectedModelVC: SelectedModelViewController = segue.destination as? SelectedModelViewController{
                            sendCarTOSelectedModelVC.carModel = carModel
                    
            }
        }
    }
    
func selectedModel(picked: String) {
        
        print("\(picked) was picked")
        
        if picked == "996" {
            viewed996.text = "Yes"
        } else if picked == "997" {
            viewed997.text = "Yes"
        } else if picked == "991" {
            viewed991.text = "Yes"
        } else if picked == "992" {
            viewed992.text = "Yes"
        }
        
    }
}
