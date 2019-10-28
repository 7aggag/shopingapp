//
//  categoriecellTableViewCell.swift
//  shoping
//
//  Created by mohamed haggag on 10/27/19.
//  Copyright © 2019 mohamed haggag. All rights reserved.
//

import UIKit

class categoriecellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var categoryname : UILabel!
    @IBOutlet weak var categorypic : UIImageView!
    
    
    
    func updateview (categories : category)  {
       
        categorypic.image = UIImage(named: categories.categoriepic)
        categoryname.text = categories.categoriname
        
        
    }

}
