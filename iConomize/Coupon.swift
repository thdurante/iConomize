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
            qrcode: "X85D10G8",
            product: product
        ))
        
        // MARK: MADERO
        product = Product.menuMadero()["cheeseburguer"]!
        product.partner = Partner.restauranteMadero()
        coupons.append(Coupon.init(
            description: "Temos o prazer de lhe apresentar o melhor cheeseburguer do mundo!\nVenha conhecer.",
            discount: 24.24,
            qrcode: "19K7T5VV",
            product: product
        ))
        
        product = Product.menuMadero()["fettuccine"]!
        product.partner = Partner.restauranteMadero()
        coupons.append(Coupon.init(
            description: "Fazemos o nosso Fettuccine exatamente como minhas avós faziam, artesanalmente.\nVenha se deliciar com esse gostinho caseiro.",
            discount: 13,
            qrcode: "D13K7N4U",
            product: product
        ))

        
        return coupons
    }
    
}
