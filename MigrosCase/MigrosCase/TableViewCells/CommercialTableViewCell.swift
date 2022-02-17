//
//  CommercialTableViewCell.swift
//  MigrosCase
//
//  Created by burak ozen on 17.02.2022.
//

import UIKit

class CommercialTableViewCell: UITableViewCell {

    @IBOutlet weak var commercialImage: UIImageView!
    @IBOutlet weak var commercialLabel: UILabel!
    @IBOutlet weak var commercialLabelLink: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
