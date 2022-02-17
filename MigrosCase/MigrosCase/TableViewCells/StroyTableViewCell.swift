//
//  StroyTableViewCell.swift
//  MigrosCase
//
//  Created by burak ozen on 16.02.2022.
//

import UIKit

protocol forSegue: class {
    
    func forSegue()
    
}

class StroyTableViewCell: UITableViewCell {

    @IBOutlet weak var stortyCollectionView: UICollectionView!
    
    weak var delegate : forSegue?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.stortyCollectionView.delegate = self
        self.stortyCollectionView.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension StroyTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var  cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as! StoryCollectionViewCell
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        delegate?.forSegue()
        
    }
    
    
}
