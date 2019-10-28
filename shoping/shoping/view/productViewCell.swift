//
//  productViewCell.swift
//  shoping
//
//  Created by mohamed haggag on 10/27/19.
//  Copyright © 2019 mohamed haggag. All rights reserved.
//

import UIKit

class productViewCell: UICollectionViewCell {
    
    @IBOutlet weak var proimage : UIImageView!
    @IBOutlet weak var proprice : UILabel!
    @IBOutlet weak var prodesc : UILabel!
    
    
    func updateprodectcell (produc : product){
      proimage.image = UIImage(named: produc.productname)
        proprice.text = produc.productprice
        prodesc.text = produc.prosuctdes
    }
    
    
}
