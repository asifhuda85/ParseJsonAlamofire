//
//  UsersTable.swift
//  ParseJsonAlamofire
//
//  Created by Md Asif Huda on 4/24/17.
//  Copyright © 2017 Md Asif Huda. All rights reserved.
//

import Foundation
import UIKit

class UsersTable: UITableView,UITableViewDataSource,UITableViewDelegate {
    
    var dataSourceArray  =   [User](){
        didSet{
            reloadData()
        }
    }
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.delegate=self
        self.dataSource=self
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSourceArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
      let cell:UserCell   =   tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UserCell
        let myUser  =   self.dataSourceArray[indexPath.row]
        
        cell.name.text  =   myUser.name
        cell.address.text = "\(myUser.address.street)\n\(myUser.address.suite)\n\(myUser.address.city)"
        cell.phoneNumber.text = myUser.phone
        cell.companyName.text = myUser.company.companyName
      
        return cell
    }
 
    
}
