//
//  FilterController.swift
//  IOSAPPLI
//
//  Created by Romain on 12/03/17.
//  Copyright © 2017 Mireille TOULOUBET. All rights reserved.
//

import Foundation
import UIKit

class FilterController : UIViewController {
    
    @IBAction func NewFilter(_ sender: UIButton) {
    }
    
    @IBOutlet var ImageView: UIImageView!
    
    @IBAction func validateFilter(_ sender: UIButton) {
        performSegue(withIdentifier: "segue.format", sender: self);
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

