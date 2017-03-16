//

//  API.swift

//  IOSAPPLI

//

//  Created by marcel NTOUTOUME-DOUMI on 14/03/2017.

//  Copyright © 2017 Mireille TOULOUBET. All rights reserved.

//



import Foundation

class API {
    
    static let baseUrl = "https://romain.bossard.estiam.com/API"
    
}


func APIRequest() {
    
    let url = "\(API.baseUrl)..."
    
    let request = NSMutableURLRequest(url: URL(string: url)!)
    
    let requestAPI = URLSession.shared.dataTask(with: request as URLRequest) {data, response, error in
        
        if (error != nil) {
            
            print(error!.localizedDescription) // On indique dans la console ou est le problème dans la requête
            
        }
        
        if let httpStatus = response as? HTTPURLResponse , httpStatus.statusCode != 200 {
            
            print("statusCode devrait être de 200, mais il est de \(httpStatus.statusCode)")
            
            print("réponse = \(response)") // On affiche dans la console si le serveur ne nous renvoit pas un code de 200 qui est le code normal
        }
        
        let responseAPI = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
        
        print("responseString = \(responseAPI)") // Affiche dans la console la réponse de l'API
        
        if error == nil {
            
            // Ce que vous voulez faire.
            
        }
        
    }
    
    requestAPI.resume()
    
}





//Requête GET
func APIRequestGET() {
    
    let url = "\(API.baseUrl)..."
    
    let requestget = NSMutableURLRequest(url: URL(string: url)!)
    
    requestget.httpMethod = "GET"
    
    let requestAPI = URLSession.shared.dataTask(with: requestget as URLRequest) {data, response, error in
        
        if (error != nil) {
            
            print(error!.localizedDescription) // On indique dans la console ou est le problème dans la requête
            
        }
        
        if let httpStatus = response as? HTTPURLResponse , httpStatus.statusCode != 200 {
            
            print("statusCode devrait être de 200, mais il est de \(httpStatus.statusCode)")
            
            print("réponse = \(response)") // On affiche dans la console si le serveur ne nous renvoit pas un code de 200 qui est le code normal
        }
        
        let responseAPI = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
        
        print("responseString = \(responseAPI)") // Affiche dans la console la réponse de l'API
        
        if error == nil {
            
            // Ce que vous voulez faire.
            
        }
        
    }
    
    requestAPI.resume()
    
}



//Requete Post
func APIRequestPOST() {
    
    let url = "\(API.baseUrl)..."
    
    let requestpost = NSMutableURLRequest(url: URL(string: url)!)
    
    requestpost.httpMethod = "POST"
    
    let requestAPI = URLSession.shared.dataTask(with: requestpost as URLRequest) {data, response, error in
        
        if (error != nil) {
            
            print(error!.localizedDescription) // On indique dans la console ou est le problème dans la requête
            
        }
        
        if let httpStatus = response as? HTTPURLResponse , httpStatus.statusCode != 200 {
            
            print("statusCode devrait être de 200, mais il est de \(httpStatus.statusCode)")
            
            print("réponse = \(response)") // On affiche dans la console si le serveur ne nous renvoit pas un code de 200 qui est le code normal
            
        }
        
        let responseAPI = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
        
        print("responseString = \(responseAPI)") // Affiche dans la console la réponse de l'API
        
        if error == nil {
            
            // Ce que vous voulez faire.
            
        }
        
    }
    
    requestAPI.resume()

}
