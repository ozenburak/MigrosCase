//
//  ThirdCampaignTableViewCell.swift
//  MigrosCase
//
//  Created by burak ozen on 17.02.2022.
//

import UIKit

class ThirdCampaignTableViewCell: UITableViewCell {

    @IBOutlet weak var thirdCampaignCV: UICollectionView!
    
    weak var delegate : forSegue?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        thirdCampaignCV.delegate = self
        thirdCampaignCV.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension ThirdCampaignTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var  cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ThirdCampaignCollectionViewCell", for: indexPath) as! ThirdCampaignCollectionViewCell
        cell.delegate = self
        return cell
    }
    
}

extension ThirdCampaignTableViewCell: forSegue {
    func forSegue() {
        delegate?.forSegue()
        
    }
    
    
}
