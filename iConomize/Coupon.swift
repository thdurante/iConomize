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
        var coupons = [Coupon]()
        var product = Product()
    
        // MARK: OUTBACK
        product = Product.menuOutback()["bloominonion"]!
        product.partner = Partner.outbackSteakhouse()
        coupons.append(Coupon.init(
            description: "Comemore seu momento com este desconto incrível no Billabong Hour.",
            discount: 25.3,
            qrcode: "9412-4326",
            product: product
        ))
        
        // MARK: MADERO
        product = Product.menuMadero()["cheeseburguer"]!
        product.partner = Partner.restauranteMadero()
        coupons.append(Coupon.init(
            description: "Veganos cuza1",
            discount: 24.24,
            qrcode: "2641-9124",
            product: product
        ))
        
        product = Product.menuMadero()["fettuccine"]!
        product.partner = Partner.restauranteMadero()
        coupons.append(Coupon.init(
            description: "Macarrao gay",
            discount: 13,
            qrcode: "8241-0381",
            product: product
        ))

        
        return coupons
    }
    
}
