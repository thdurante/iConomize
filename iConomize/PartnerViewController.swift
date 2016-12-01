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
    @IBOutlet weak var partnerName: UILabel!
    @IBOutlet weak var menuTableViewController: UITableView! {
        didSet {
            menuTableViewController.dataSource = self
            menuTableViewController.delegate = self
        }
    }
    
    var partner: Partner?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideshowToView()
        
        if let _ = partner {
            self.partnerName.text = partner!.name
        }
        
        self.navigationItem.title = partner!.name
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:  UIColor(red: 255/255, green: 59/255, blue: 48/255, alpha: 1)]
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

extension PartnerViewController: UITableViewDataSource, UITableViewDelegate {
    
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
        
        if let _ = partner {
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
    
    // MARK: - MenuTableView data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let _ = partner {
            return partner!.menu.count
        }
        
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("menuCell", forIndexPath: indexPath) as! MenuTableViewCell
        
        if let _ = partner {
            cell.menuImage.image = UIImage.init(named: (partner?.menu[indexPath.row].image)!)
            cell.productName.text = partner?.menu[indexPath.row].name
            
            let formatter = NSNumberFormatter()
            formatter.numberStyle = .CurrencyStyle
            formatter.stringFromNumber((partner?.menu[indexPath.row].price)!)
            formatter.locale = NSLocale(localeIdentifier: "pt_BR")
            let priceFormated = formatter.stringFromNumber((partner?.menu[indexPath.row].price)!)
            
            cell.productPrice.text = priceFormated
        }
        
        return cell
    }
    
}
