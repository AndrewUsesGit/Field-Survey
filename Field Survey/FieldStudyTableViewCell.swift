//
//  FieldStudyTableViewCell.swift
//  Field Survey
//
//  Created by Andrew W Stoll on 11/3/17.
//  Copyright © 2017 Andrew W Stoll. All rights reserved.
//

import UIKit

class FieldStudyTableViewCell: UITableViewCell {

    @IBOutlet weak var classificationIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
