//
//  CouponDetailViewController.swift
//  iConomize
//
//  Created by Thiago Durante Pires on 29/11/16.
//  Copyright © 2016 Inf. All rights reserved.
//

import UIKit

class CouponDetailViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var partner: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var discountPrice: UILabel!
    @IBOutlet weak var couponDescription: UILabel!
    @IBOutlet weak var qrcode: UILabel!
    
    var coupon: Coupon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 38, height: 38))
        imageView.contentMode = .ScaleAspectFit
        let imageLogo = UIImage(named: "logo")
        imageView.image = imageLogo
        self.navigationItem.titleView = imageView
        
        image.image = UIImage.init(named: coupon.product.image!)
        partner.text = coupon.product.partner!.name
        name.text = coupon.product.name
        
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        formatter.stringFromNumber(coupon.product.price!)
        formatter.locale = NSLocale(localeIdentifier: "pt_BR")
        let priceFormated = formatter.stringFromNumber(coupon.product.price!)
        let discountPriceFormated = formatter.stringFromNumber(coupon.product.price! * ((100 - coupon.discount)/100))
        
        let atributeString: NSMutableAttributedString = NSMutableAttributedString(string: priceFormated!)
        atributeString.addAttribute(NSStrikethroughStyleAttributeName, value: 1, range: NSMakeRange(0, atributeString.length))
        
        price.attributedText = atributeString
        discountPrice.text = discountPriceFormated
        couponDescription.text = coupon.description
        qrcode.text = coupon.qrcode
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "partnerSegue" {
            if let partnerView = segue.destinationViewController as? PartnerViewController {
                partnerView.partner = coupon.product.partner
            }
        }
    }

}
