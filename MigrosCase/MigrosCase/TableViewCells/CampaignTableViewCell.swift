//
//  CampaignTableViewCell.swift
//  MigrosCase
//
//  Created by burak ozen on 17.02.2022.
//

import UIKit

class CampaignTableViewCell: UITableViewCell {

    @IBOutlet weak var campaignCV: UICollectionView!
    
    weak var delegate : forSegue?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        campaignCV.delegate = self
        campaignCV.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension CampaignTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var  cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CampaignCollectionViewCell", for: indexPath) as! CampaignCollectionViewCell
        cell.delegate = self
        return cell
    }
    
    
    
}

extension CampaignTableViewCell: forSegue {
    func forSegue() {
        delegate?.forSegue()
        
    }
    
    
}

