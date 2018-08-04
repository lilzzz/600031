//
//  Auth.swift
//  smack
//
//  Created by LI on 4/8/18.
//  Copyright © 2018年 LI. All rights reserved.
//

import Foundation
import Alamofire

class Authservice {
    static let instance = Authservice()
    
    let defaults = UserDefaults.standard
    
    var isLoggedIn : Bool {
        get {
            return defaults.bool(forKey: "loggedIn")
        }
        set {
            defaults.set(newValue, forKey: "loggedIn")
        }
    }
    
    var authToken: String {
        get {
            return defaults.value(forKey: "token") as! String
        }
        set {
            defaults.set(newValue, forKey: "token")
        }
    }
    
    var userEmail: String {
        get {
            return defaults.value(forKey: "userEmail") as! String
        }
        set {
            defaults.set(newValue, forKey: "userEmail")
        }
    }
    
    func registerUser(email: String, password: String, completion: @escaping CompletionHondler) {
        let lowerCaseEmail = email.lowercased()
        let header = [
            "Content-Type": "application/json; charset=utf-8"
        ]
        let body: [String: Any] = [
            "email": lowerCaseEmail,
            "password": password
        ]
        
        Alamofire.request(URL_REGISTER, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseString
            { (response) in
                if response.result.error == nil {
                    completion(true)
                } else {
                    completion(false)
                    debugPrint(response.result.error.debugDescription)
                }
        }
    }
    
}
