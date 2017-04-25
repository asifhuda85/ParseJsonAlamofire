//
//  APIManager.swift
//  ParseJsonAlamofire
//
//  Created by Md Asif Huda on 4/24/17.
//  Copyright © 2017 Md Asif Huda. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class APIManager{

    static let sharedInstance   =   APIManager()
    
   fileprivate init(){
        
    }
    
    func getUsersFromUrl(_ onCompletion:@escaping (JSON)-> Void) {

        let url =   URL(string: FETCH_USERS_URL)
        
        Alamofire.request(url!, method: .get).responseJSON { response in
            
            switch response.result{
                
            case.success(let data):
                let response = JSON(data)
                 onCompletion(response)
            case .failure(let error):
                print("error",error)
                onCompletion(nil)
            }
        }
    }
}
        
    
    

