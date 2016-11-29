//
//  Coupon.swift
//  iConomize
//
//  Created by Thiago Durante Pires on 29/11/16.
//  Copyright © 2016 Inf. All rights reserved.
//

import Foundation

class Coupon {
    
    let name: String
    let image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    static func list() -> [Coupon] {
        var coupons: [Coupon] = [Coupon]()
        
        coupons.append(Coupon.init(name: "Cupom 1", image: "default-image"))
        coupons.append(Coupon.init(name: "Cupom 2", image: "default-image"))
        coupons.append(Coupon.init(name: "Cupom 3", image: "default-image"))
        coupons.append(Coupon.init(name: "Cupom 4", image: "default-image"))
        coupons.append(Coupon.init(name: "Cupom 5", image: "default-image"))
        
        return coupons
    }
}
