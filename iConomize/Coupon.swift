//
//  Coupon.swift
//  iConomize
//
//  Created by Thiago Durante Pires on 29/11/16.
//  Copyright © 2016 Inf. All rights reserved.
//

import Foundation

class Coupon {
    let description: String
    let discount: Double
    let qrcode: String
    let product: Product
    
    init(description: String, discount: Double, qrcode: String, product: Product) {
        self.description = description
        self.discount = discount
        self.qrcode = qrcode
        self.product = product
    }
    
    static func list() -> [Coupon] {
        var coupons: [Coupon] = [Coupon]()
    
        coupons.append(Coupon.init(description: "Promoção foda!", discount: 25.3, qrcode: "9412-4326", product: Product.bloominOnions()))
        coupons.append(Coupon.init(description: "Veganos cuza1", discount: 24.24, qrcode: "2641-9124", product: Product.hamburguerBovino()))
        
        return coupons
    }
}
