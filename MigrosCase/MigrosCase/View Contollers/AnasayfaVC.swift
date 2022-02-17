//
//  AnasayfaVC.swift
//  MigrosCase
//
//  Created by burak ozen on 15.02.2022.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var anasayfaTV: UITableView!
    @IBOutlet weak var headerCV: UICollectionView!
    
    
    var headerList = ["Fatih 🙋🏼‍♂️","Fırsatlar", "MigrosTV","Ayrıcalıklar"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        anasayfaTV.delegate = self
        anasayfaTV.dataSource = self
        
        headerCV.delegate = self
        headerCV.dataSource = self
        
        

        
    }
    
    @IBAction func creditCardDuoBTN(_ sender: Any) {
    }
    
    @IBAction func userImageBTN(_ sender: Any) {
    }
    
    @IBAction func listDuotoneBTN(_ sender: Any) {
    }
    
    
    @IBAction func backToAnasayfaVC(segue : UIStoryboardSegue)
    {
        
    }
    
}

extension AnasayfaVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {

            let cell = tableView.dequeueReusableCell(withIdentifier: "StroyTableViewCell", for: indexPath) as! StroyTableViewCell
            cell.delegate = self
            return cell

        } else if indexPath.row == 1 {

         let cell = tableView.dequeueReusableCell(withIdentifier: "CommercialTableViewCell", for: indexPath) as! CommercialTableViewCell
            return cell

        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TitleTableViewCell", for: indexPath) as! TitleTableViewCell
               return cell
            
        } else if indexPath.row == 3 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CampaignTableViewCell", for: indexPath) as! CampaignTableViewCell
            cell.delegate = self
            return cell
            
        } else if indexPath.row == 4 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTitleTableViewCell", for: indexPath) as! SecondTitleTableViewCell
            return cell
            
        } else if indexPath.row == 5 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondCampaignTableViewCell", for: indexPath) as! SecondCampaignTableViewCell
            cell.delegate = self
            return cell
            
        } else if indexPath.row == 6 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ThirdTitleTableViewCell", for: indexPath) as! ThirdTitleTableViewCell
            return cell
            
        } else if indexPath.row == 7 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ThirdCampaignTableViewCell", for: indexPath) as! ThirdCampaignTableViewCell
            cell.delegate = self
            return cell
        }
        return UITableViewCell()
    }
    
    
}

extension AnasayfaVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return headerList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderCollectionViewCell", for: indexPath) as! HeaderCollectionViewCell
        cell.headerLabel.text = headerList[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "toSecondVC", sender: indexPath.row)

    
    }
    
    
    
}

extension AnasayfaVC: forSegue {
    func forSegue() {
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)

    }
    
    
    
}

