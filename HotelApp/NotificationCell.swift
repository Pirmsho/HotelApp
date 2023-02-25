//
//  NotificationCell.swift
//  HotelApp
//
//  Created by Davit Pirmisashvili on 25.02.23.
//

import UIKit

class NotificationCell: UITableViewCell {

    @IBOutlet weak var roomLbl: UILabel!
    
    @IBOutlet weak var dateLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
