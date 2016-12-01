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
    
    var partner: Partner?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideshowToView()
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

extension PartnerViewController {
    
    func setSlideshowImages(partnerName: String) -> ImageSlideshow {
        let slideshow = ImageSlideshow.init(
            frame: slideshowView.frame
        )
        
        var images = [ImageSource]()
        for i in 1...4 {
            images.append(ImageSource(image: UIImage(named: "\(partnerName)\(i)")!))
        }
        
        slideshow.setImageInputs(images)
        
        return slideshow
    }
    
    func addSlideshowToView() {
        var slideshow: ImageSlideshow = ImageSlideshow()
        switch partner!.name {
        case "Restaurante Madero":
            slideshow = setSlideshowImages("madero")
        case "Outback Steakhouse":
            slideshow = setSlideshowImages("outback")
        default:
            "Error"
        }
        
        self.view.addSubview(slideshow)
    }
    
}
