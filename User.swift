//
//  User.swift
//  ParseJsonAlamofire
//
//  Created by Md Asif Huda on 4/24/17.
//  Copyright © 2017 Md Asif Huda. All rights reserved.
//

import Foundation
import SwiftyJSON

class User {
    var name=String()
    var username=String()
    var email=String()
    var phone=String()
    var address=userAddress(addressJson:"")
    var company = userCompany(companyJson:"")
    
    
    init(userJson:JSON){
        self.name   =   userJson["name"].stringValue
        self.username   =   userJson["username"].stringValue
        self.phone   =   userJson["phone"].stringValue
        self.email   =   userJson["email"].stringValue
        self.address    =   userAddress(addressJson:userJson["address"])
        self.company    =   userCompany(companyJson:userJson["company"])
    }
   
}


class userAddress{
    
    var street=String()
    var suite=String()
    var city=String()
    
    init(addressJson:JSON){
        self.street =   addressJson["street"].stringValue
        self.suite =   addressJson["suite"].stringValue
        self.city =   addressJson["city"].stringValue
    }

}


class userCompany{
    var companyName=String()
    var phrase=String()

    init(companyJson:JSON){
        
        self.companyName    =   companyJson["name"].stringValue
        self.phrase =   companyJson["catchPhrase"].stringValue
        
    }
}
