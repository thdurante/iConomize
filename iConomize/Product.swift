//
//  Product.swift
//  iConomize
//
//  Created by Student on 11/29/16.
//  Copyright © 2016 Inf. All rights reserved.
//

import Foundation

class Product {
    var name: String?
    var image: String?
    var price: Double?
    var description: String?
    var partner: Partner?
    
    convenience init(name: String, image: String, price: Double, description: String) {
        self.init()
        
        self.name = name
        self.image = image
        self.price = price
        self.description = description
    }

    convenience init(name: String, image: String, price: Double, description: String, partner: Partner){
        self.init()
        
        self.name = name
        self.image = image
        self.price = price
        self.description = description
        self.partner = partner
        
    }
    
    
    static func hamburguerBovino() -> Product{
        return Product.init(name: "HAMBURGER BOVINO NO PRATO", image: "hamburguerbovino", price: 33, description: "Servido no prato - Com queijo cheddar e pequena salada, escolha um acompanhamento.", partner: Partner.restauranteMadero())
    }
    
    static func bloominOnions() -> Product{
        return Product.init(name: "BLOOMIN' ONION®", image: "bloominoniuon", price: 45.45, description: "O verdadeiro sabor do Outback. A gigante cebola dourada, pronta para ser saboreada com nosso maravilhoso molho Bloom.", partner: Partner.outbackSteakhouse())
    }
    
    static func menuMadero() -> [Product]{
        let product1 = Product.init(name: "HAMBURGER BOVINO NO PRATO", image: "hamburguerbovino", price: 33, description: "Servido no prato - Com queijo cheddar e pequena salada, escolha um acompanhamento.")
        
        return [product1]
    }
    
    static func menuOutback() -> [Product]{
        let product1 = Product.init(name: "BLOOMIN' ONION®", image: "bloominoniuon", price: 45.45, description: "O verdadeiro sabor do Outback. A gigante cebola dourada, pronta para ser saboreada com nosso maravilhoso molho Bloom.")
        
        return [product1]
    }
}