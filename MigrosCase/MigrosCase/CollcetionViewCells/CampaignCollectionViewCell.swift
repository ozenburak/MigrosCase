//
//  CampaignCollectionViewCell.swift
//  MigrosCase
//
//  Created by burak ozen on 17.02.2022.
//

import UIKit

class CampaignCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var campaignImageView: UIImageView!
    @IBOutlet weak var campaignLabel: UILabel!
    
    weak var delegate : forSegue?
    
    @IBAction func campaignBTNDetail(_ sender: Any) {
            
        
        
    }
    
    @IBAction func campaignBTNAdd(_ sender: Any) {
        
        delegate?.forSegue()
        
    }
    
}
