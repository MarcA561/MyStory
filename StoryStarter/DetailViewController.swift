//
//  DetailViewController.swift
//  DGStarter
//
//  Created by Brook Lynn on 9/3/23.
//

import UIKit

class DetailViewController: UIViewController {

    // Property
    var deadpool: Deadpool?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Do any additional setup after loading the view.
        /*if let deadpool = deadpool {
            print(deadpool.name)
        }*/
        
        if let deadpool = deadpool {
            // Configure the deadpool image and dynamic labels
            dinosaurImageView.image = deadpool.image
            dinosaurNameLabel.text = deadpool.name
            DPDescLabel.text = deadpool.desc
        }
    }
    
    @IBOutlet weak var dinosaurImageView: UIImageView!
    @IBOutlet weak var dinosaurNameLabel: UILabel!
    
    @IBOutlet weak var DPDescLabel: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
