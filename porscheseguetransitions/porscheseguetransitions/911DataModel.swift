//
//  911DataModel.swift
//  porscheseguetransitions
//
//  Created by Amarpreet Cheema on 2018-12-13.
//  Copyright © 2018 Amar Cheema. All rights reserved.
//

import Foundation
import UIKit

class Model911 {
    
    //var image911: UIImage
    var chasis: String
    var years : String
    var baseEngine: String
    var hp: String
    
    init(//image911: UIImage,
        chasis: String,
        years: String,
        baseEngine: String,
        hp: String) {
        
        //self.image911 = image911
        self.chasis = chasis
        self.years = years
        self.baseEngine = baseEngine
        self.hp = hp
    }
}




