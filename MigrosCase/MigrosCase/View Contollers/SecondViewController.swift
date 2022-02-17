//
//  SecondViewController.swift
//  MigrosCase
//
//  Created by burak ozen on 17.02.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var statementLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func closeBTN(_ sender: Any) {
        
        performSegue(withIdentifier: "sg2To1", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "sg2To1"
        {
            let vc = segue.destination as! AnasayfaVC
            
        }
        
    }
    
    
    @IBAction func codeBTN(_ sender: Any) {
        
    }
    
    
    
}
