//
//  PartnerViewController.swift
//  iConomize
//
//  Created by Thiago Durante Pires on 30/11/16.
//  Copyright © 2016 Inf. All rights reserved.
//

import UIKit
import ImageSlideshow

class PartnerViewController: UIViewController {

    @IBOutlet weak var slideshowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let slideshow = ImageSlideshow.init(
            frame: slideshowView.frame
        )
        
        slideshow.setImageInputs([
            ImageSource(image: UIImage(named: "madero1")!),
            ImageSource(image: UIImage(named: "madero2")!),
            ImageSource(image: UIImage(named: "madero3")!),
            ImageSource(image: UIImage(named: "madero4")!)
        ])
        
        self.view.addSubview(slideshow)
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
