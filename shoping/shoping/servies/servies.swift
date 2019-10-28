//
//  servies.swift
//  shoping
//
//  Created by mohamed haggag on 10/27/19.
//  Copyright © 2019 mohamed haggag. All rights reserved.
//

import Foundation
class data {
    
    static let datainstanic = data ()
    
   private let categories = [category(name: "Shirts", pic: "shirts.png"),
        category(name: "HOODIES", pic: "hoodies.png"),
        category(name: "HATS", pic: "hats.png"),
        category(name: "DIGITAL", pic: "digital.png")]
    
    
    private let Sharts = [product(name: "shirt01.jpg", des: "great T-shirt for developer ", price: "100"),
    product(name: "shirt02.jpg", des: "great T-shirt for developer ", price: "100"),
    product(name: "shirt03.jpg", des: "great T-shirt for developer ", price: "100"),
    product(name: "shirt04.jpg", des: "great T-shirt for developer ", price: "100")
    ]
    private let  hats = [product(name: "hat01.jpg", des: "great Hat for developer ", price: "49"),
                        product(name: "hat01.jpg", des: "great Hat for developer " , price: "49"),
                        product(name: "hat01.jpg", des: "great Hat for developer ", price: "49"),
                        product(name: "hat01.jpg", des: "great Hat for developer ", price: "49")
    ]
    private let hoodies = [product(name: "hoodie01.jpg", des: "great hoodie for developer ", price: "150"),
                        product(name: "hoodie02.jpg", des: "great hoodie for developer ", price: "150"),
                        product(name: "hoodie03.jpg", des: "great hoodie for developer ", price: "150"),
                        product(name: "hoodie04.jpg", des: "great hoodie for developer ", price: "150")
    ]
    
    private let digitals = [product]()
    
    func getcategories () -> [category]{
        return categories
    }
    
    
    func getproduct(title : String) -> [product] {
        switch title {
        case "HATS":
         return   gethats()
        case "Shirts":
          return  getshirts()
        case "HOODIES":
           return gethoodes()
        case "DIGITAL":
            return getdigitals()
        default:
            return getdigitals()
        }}
    
    
    func gethats () -> [product]{
        return hats
    }
    func getshirts () -> [product]{
        return Sharts
    }
    func gethoodes () -> [product]{
        return hoodies
    }
    func getdigitals () -> [product]{
        return digitals
    }
    

}
