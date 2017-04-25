//
//  UserCell.swift
//  ParseJsonAlamofire
//
//  Created by Md Asif Huda on 4/24/17.
//  Copyright © 2017 Md Asif Huda. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var name: UILabel!

    @IBOutlet weak var companyName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
