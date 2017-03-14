//
//  MenuViewController.swift
//  IOSAPPLI
//
//  Created by marcel NTOUTOUME-DOUMI on 12/03/2017.
//  Copyright © 2017 Mireille TOULOUBET. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBAction func reglageButton(_ sender: UIButton) {
        let vue = self.storyboard?.instantiateViewController(withIdentifier: "ReglageViewController") as! ReglageViewController
        self.navigationController?.pushViewController(vue, animated: true);
    }
    
    @IBAction func historiqueButton(_ sender: UIButton) {
        let vue = self.storyboard?.instantiateViewController(withIdentifier: "HistoriqueViewController") as! HistoriqueViewController
        self.navigationController?.pushViewController(vue, animated: true);
    }
    
    @IBAction func repertoireButton(_ sender: UIButton) {
        let vue = self.storyboard?.instantiateViewController(withIdentifier: "CarnetViewController") as! CarnetViewController
        self.navigationController?.pushViewController(vue, animated: true);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        //let vue = self.storyboard?.instantiateViewController(withIdentifier: "IdAccueil") as! ViewController
        // self.navigationController?.pushViewController(vue, animated: true);
        
    }
    
}
