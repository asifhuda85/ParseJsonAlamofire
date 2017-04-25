//
//  ViewController.swift
//  ParseJsonAlamofire
//
//  Created by Md Asif Huda on 4/24/17.
//  Copyright © 2017 Md Asif Huda. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class ViewController: UIViewController {

    @IBOutlet weak var myTable: UsersTable!

    var myResponse: JSON = nil
    var users:[User] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        fetchUsers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fetchUsers(){
        
        APIManager.sharedInstance.getUsersFromUrl(){(userJson) -> Void in
            
            if userJson != nil {
                
                self.myResponse =   userJson
                
                for i in 0..<self.myResponse.count{
                    let singleUser   =   User(userJson: self.myResponse[i])
                    self.users.append(singleUser)
                }
                DispatchQueue.main.async(execute: {
                    self.myTable.dataSourceArray=self.users
                })
            }
            
        }
   
    }
    
}

