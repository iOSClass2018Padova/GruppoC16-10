//
//  FilmDetailsCell.swift
//  GruppoC16-10
//
//  Created by Leonardo De Benetti on 16/10/2018.
//  Copyright © 2018 developer.llb. All rights reserved.
//

import UIKit

class FilmDetailsCell: UITableViewCell {
    
    static let kIdentifier = "FilmDetailsCell"

    @IBOutlet weak var imageFilm: UIImageView!
    
    @IBOutlet weak var titleFilm: UILabel!
    
    @IBOutlet weak var timesFilm: UILabel!
    
    @IBOutlet weak var descrFilm: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
