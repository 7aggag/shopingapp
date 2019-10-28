//
//  ViewController.swift
//  shoping
//
//  Created by mohamed haggag on 10/27/19.
//  Copyright © 2019 mohamed haggag. All rights reserved.
//

import UIKit

class categoeiesvc: UIViewController , UITableViewDelegate , UITableViewDataSource {
  
    
    
    @IBOutlet weak var categorytable : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categorytable.dataSource = self
        categorytable.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.datainstanic.getcategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categorecell") as? categoriecellTableViewCell{
            let category = data.datainstanic.getcategories()[indexPath.row]
            cell.updateview(categories: category)
            
         return cell
        }
        return categoriecellTableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cat = data.datainstanic.getcategories()[indexPath.row]
        performSegue(withIdentifier: "toproductvc", sender: cat)
        
    
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let barbtn = UIBarButtonItem()
        barbtn.title = ""
        navigationItem.backBarButtonItem = barbtn
        assert(sender as? category != nil)
        if let destination = segue.destination as?Productvc {
            destination.getpro(catego: sender as! category )
            
         
        }
        
    }

    
    
    
    
    

}

