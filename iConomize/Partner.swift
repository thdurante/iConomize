//
//  Partner.swift
//  iConomize
//
//  Created by Student on 11/29/16.
//  Copyright © 2016 Inf. All rights reserved.
//

import Foundation

class Partner {
    let name: String
    let description: String
    let address: String
    let images: [String]
    let mapLat: Double
    let mapLong: Double
    let menu: [Product]
    
    init(name: String, description: String, address: String, images: [String], mapLat: Double, mapLong: Double, menu: [Product]) {
        self.name = name
        self.description = description
        self.address = address
        self.images = images
        self.mapLat = mapLat
        self.mapLong = mapLong
        self.menu = menu
    }
    
    static func restauranteMadero() -> Partner {
        return Partner.init(name: "Restaurante Madero", description: "The best burguer in the world", address: "Goiânia Shopping", images: ["madero1", "madero2", "madero3"], mapLat: -16.707670, mapLong: -49.272352, menu: Product.menuMadero())
    }
    
    static func outbackSteakhouse() -> Partner {
        return Partner.init(name: "Outback Steakhouse", description: "O sabor da Austrália", address: "Shopping Flamboyant", images: ["outback1", "outback2", "outback3"], mapLat: -16.708464, mapLong: -49.235719, menu: Product.menuOutback())
    }
}