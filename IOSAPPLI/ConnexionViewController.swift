//
//  ConnexionViewController.swift
//  IOSAPPLI
//
//  Created by marcel NTOUTOUME-DOUMI on 12/03/2017.
//  Copyright © 2017 Mireille TOULOUBET. All rights reserved.
//

import UIKit

class ConnexionViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var loginChamp: UITextField!
    
    @IBOutlet weak var pwdChamp: UITextField!
    
    
    
    @IBAction func validerBoutton(_ sender: Any) {
        let login = loginChamp.text
        let pwd = pwdChamp.text
        
        //Si les champs sont vides
        if (login!.isEmpty || pwd!.isEmpty ) {
            let alertController = UIAlertController(title: "Alerte", message:
                "Tous les champs doivent être renseignés", preferredStyle: UIAlertControllerStyle.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default,handler: nil))
        }
        if (login != "" || pwd != "")
        {
            let vue = self.storyboard?.instantiateViewController(withIdentifier: "SelectionViewController") as! SelectionViewController
            self.navigationController?.pushViewController(vue, animated: true);
        }
    }
    
    
    @IBAction func enregButton(_ sender: UIButton) {
        //enregChamp()
        let vue = self.storyboard?.instantiateViewController(withIdentifier: "CreationCompteViewController") as! CreationCompteViewController
        self.navigationController?.pushViewController(vue, animated: true);
        
        let postString = ["login":loginchamp,"password":pwdChamp],
        
        requestpost.httpBody = postString.data(using: String.Encoding.utf8)
    }
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
