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

    convenience init(name: String, image: String, price: Double, description: String, partner: Partner) {
        self.init()
        
        self.name = name
        self.image = image
        self.price = price
        self.description = description
        self.partner = partner
    }
    
    static func menuMadero() -> [String: Product] {
        var products =  [String: Product]()
        
        products["cheeseburguer"] = Product.init(
            name: "Cheeseburguer Madero",
            image: "cheeseburguer",
            price: 33,
            description: "Servido no prato - Com queijo cheddar e pequena salada. Hamburger de 180g."
        )
        
        products["carnegrelhada"] = Product.init(
            name: "Bife de Chorizo - 350g",
            image: "carnegrelhada",
            price: 56,
            description: "Famoso corte argentino saboroso e com excelente textura."
        )
        
        products["fettuccine"] = Product.init(
            name: "Fettuccine à Primavera",
            image: "fettuccine",
            price: 37,
            description: "Brócolis, abobrinha, ervilhas, cenoura, cheiro verde, tomates e creme de leite"
        )
        
        return products
    }
    
    static func menuOutback() -> [String: Product] {
        var products = [String: Product]()
        
        products["bloominonion"] = Product.init(
            name: "Bloomin' Onion",
            image: "bloominonion",
            price: 45.45,
            description: "O verdadeiro sabor do Outback. A gigante cebola dourada, pronta para ser saboreada com nosso maravilhoso molho Bloom."
        )
        
        products["jackarooribsandsteak"] = Product.init(
            name: "Jackaroo ribs and steak",
            image: "jackarooribsandsteak",
            price: 70.90,
            description: "Uma deliciosa combinação de Junior Ribs, regada ao molho barbecue, e um saboroso filet mignon de 220g, coberto de manteiga com um toque de limão. Servidos com fritas ou outro acompanhamento à sua escolha."
        )
        
        products["victoriafilet"] = Product.init(
            name: "Victoria's Filet",
            image: "victoriafilet",
            price: 61.95,
            description: "Filet Mignon de 230g, preparado no estilo Outback."
        )
        
        return products
    }
    
}
