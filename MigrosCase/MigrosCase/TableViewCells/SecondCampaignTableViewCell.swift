//
//  SecondCampaignTableViewCell.swift
//  MigrosCase
//
//  Created by burak ozen on 17.02.2022.
//

import UIKit

class SecondCampaignTableViewCell: UITableViewCell {

    @IBOutlet weak var secondCampaignCV: UICollectionView!
    
    weak var delegate : forSegue?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        secondCampaignCV.delegate = self
        secondCampaignCV.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension SecondCampaignTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var  cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondCampaignCollectionViewCell", for: indexPath) as! SecondCampaignCollectionViewCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        delegate?.forSegue()
        
    }
    
    
    
    
}
