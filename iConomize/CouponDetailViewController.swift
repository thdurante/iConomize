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
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var couponDescription: UILabel!
    @IBOutlet weak var qrcode: UILabel!
    
    var coupon: Coupon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        image.image = UIImage.init(named: coupon.product.image!)
        name.text = coupon.product.name
        price.text = "De R$\(coupon.product.price!) por R$\(coupon.product.price! * ((100 - coupon.discount)/100))"
        couponDescription.text = coupon.description
        qrcode.text = "Cupom: \(coupon.qrcode)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "partnerSegue" {
            
        }
    }

}
