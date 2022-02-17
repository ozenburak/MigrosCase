//
//  ThirdCampaignCollectionViewCell.swift
//  MigrosCase
//
//  Created by burak ozen on 17.02.2022.
//

import UIKit

class ThirdCampaignCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var thirdCampaignLAbel: UILabel!
    @IBOutlet weak var thirdCampaignImageView: UIImageView!
    
    weak var delegate : forSegue?
    
    @IBAction func thirdAddBTN(_ sender: Any) {
        
        delegate?.forSegue()
    }
}
