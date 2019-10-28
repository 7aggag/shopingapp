//
//  categoriemodel.swift
//  shoping
//
//  Created by mohamed haggag on 10/27/19.
//  Copyright © 2019 mohamed haggag. All rights reserved.
//

import Foundation
struct category {
    
    var categoriname : String
    var categoriepic : String
    
    
    init(name : String , pic : String ){
        categoriname = name
        categoriepic = pic
        
    }
}


struct  product {
    
    var productname : String
    var prosuctdes : String
    var productprice : String
    
    
    init( name : String , des : String , price : String) {
    
        productname = name
        prosuctdes = des
        productprice = price
        
    }
    
    
    
    
}
