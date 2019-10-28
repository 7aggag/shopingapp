//
//  Productvc.swift
//  shoping
//
//  Created by mohamed haggag on 10/27/19.
//  Copyright © 2019 mohamed haggag. All rights reserved.
//

import UIKit

class Productvc: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource {
   
  private (set) public var pro = [product]()
 
    @IBOutlet weak var procollection : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        procollection.delegate = self
        procollection.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pro.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productview", for: indexPath)as? productViewCell {
            let pruct = pro[indexPath.row]
            cell.updateprodectcell(produc: pruct)
        return cell
        }
            return productViewCell()
    }
    func getpro(catego : category ){
        
       pro = data.datainstanic.getproduct(title:catego.categoriname)
        navigationItem.title = catego.categoriname
    }


}
