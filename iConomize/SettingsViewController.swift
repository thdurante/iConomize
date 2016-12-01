//
//  SettingsViewController.swift
//  iConomize
//
//  Created by Thiago Durante Pires on 01/12/16.
//  Copyright © 2016 Inf. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var searchRadius: UISlider!
    @IBOutlet weak var currentSearchRadius: UILabel!
    @IBAction func setRadius(sender: UISlider) {
        let currentValue = Int(sender.value)
        currentSearchRadius.text = "\(currentValue) Km"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 38, height: 38))
        imageView.contentMode = .ScaleAspectFit
        let imageLogo = UIImage(named: "logo")
        imageView.image = imageLogo
        self.navigationItem.titleView = imageView
        
        currentSearchRadius.text = "\(Int(searchRadius.value)) Km"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
