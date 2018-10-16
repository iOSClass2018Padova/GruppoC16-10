//
//  TicketCell.swift
//  GruppoC16-10
//
//  Created by Leo Luca Bonin on 16/10/2018.
//  Copyright © 2018 developer.llb. All rights reserved.
//

import UIKit

class TicketCell: UITableViewCell {

    @IBOutlet weak var imageTicket: UIImageView!{
        didSet{
            imageTicket.layer.cornerRadius = 10
        }
    }
    
    @IBOutlet weak var ticketName: UILabel!
    @IBOutlet weak var placeIntText: UILabel!{
        didSet{
            placeIntText.textColor = UIColor.white
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
