//
//  InscriptionViewController.swift
//  IOSAPPLI
//
//  Created by marcel NTOUTOUME-DOUMI on 17/12/2016.
//  Copyright © 2016 Mireille TOULOUBET. All rights reserved.
//

import UIKit

class CreationCompteViewController: UIViewController {

    
    @IBOutlet weak var nomChamp: UITextField!
    
    @IBOutlet weak var prenomChamp: UITextField!
    
    @IBOutlet weak var dateChamp: UITextField!
    
    @IBOutlet weak var mailChamp: UITextField!
    
    @IBOutlet weak var pwdChamp: UITextField!
    
    @IBOutlet weak var pwdRepChamp: UITextField!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}

    //func alerteMessge (title:String, message:String)
    //{let alert = UIAlertController(title:title, message: message, preferredStyle: <#T##UIAlertControllerStyle#>)
        //alert.addAction(UIAlertAction(title: "OK", style:UIAlertControllerStyle.alert)
    
    
    
    @IBAction func validerBoutton2(_ sender: Any) {
        //var nom:NSString = nomChamp.text
        //var utilisateur:Struct_Utilisateur()
        //utilisateur.nom = nomChamp.text
        let nom = nomChamp.text!
        let prenom = prenomChamp.text!
        let date = dateChamp.text!
        let email = mailChamp.text!
        let pwd = pwdChamp.text!
        let pwdRep = pwdRepChamp.text!
        
        
        //Vérifier si les champs sont vides
        if (nom.isEmpty || prenom.isEmpty || date.isEmpty || email.isEmpty || pwd.isEmpty || (pwdRep.isEmpty))
            
        {
            //Afficher les messages d'alerte
                //displayMyAlertMessage("Tous les champs doivent être renseignés")//
            let alertController = UIAlertController(title: "Alerte", message:
                "Tous les champs doivent être renseignés", preferredStyle: UIAlertControllerStyle.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }

        
        //Vérifier la correspondance des mots de passe
        if ( (nom != "" || prenom != "" || date != "" || email != "" || pwd != "" || pwdRep != "") && (pwd != pwdRep))
    
        {
            //Afficher un message d'alerte
            
            //Création de l'alerte
            let alert = UIAlertController(title: "Alerte", message:
                "Les mots de passe doivent être identiques", preferredStyle: UIAlertControllerStyle.alert)
            //Ajout d'une action boutton
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default,handler: nil))
            //Voir alerte
            self.present(alert,animated: true, completion: nil)
        }
        
        
        
        if (nom != "" || prenom != "" || date != "" || email != "" || pwd != "" || pwdRep != "" )
            {
                let vue = self.storyboard?.instantiateViewController(withIdentifier: "ConnexionViewController") as! ConnexionViewController
                self.navigationController?.pushViewController(vue, animated: true);            }
    }
    
    
    @IBAction func connexionBoutton(_ sender: Any) {
        let vue = self.storyboard?.instantiateViewController(withIdentifier: "SelectionViewController") as! SelectionViewController
        self.navigationController?.pushViewController(vue, animated: true);
    }
}
