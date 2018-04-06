//
//  ListController.swift
//  PracticaApp
//
//  Created by DAM on 16/3/18.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit
import CoreData

class ListController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    let generosIcon:[String] = ["humor.jpg","cf.png","drama.jpg","manga.jpg","sa.jpg","terror.jpg"];
    let generosName = ["humor", "ciencia ficcion", "drama", "anime", "series para adultos",  "terror"]
    
    var array = [""]
    var gender:Gender = Gender()
    
    var managedContext:NSManagedObjectContext!
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return generosIcon.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CellGender
        
        celda.imgCell.image = UIImage(named: generosIcon[indexPath.row] )
        celda.name.text = generosName[indexPath.row]
        
        return celda
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        managedContext = appDelegate?.persistentContainer.viewContext
        
        if (gender.getAll(managedContext: managedContext) == nil) {
            print("Entreo en el fi")
            
            for index in 0...generosIcon.count-1 {
                
                print(index)
                
                let pic = UIImage(named: generosIcon[index])
                
                let data:NSData = UIImagePNGRepresentation(pic!) as! NSData
                
                gender.insert(icon: data, name: generosName[index], managedContext: managedContext)
            }
            
        }else{
            
        }
    }

    func load(){
        let generosIcon:[String] = ["humor.jpg","cf.png","drama.jpg","manga.jpg","sa.jpg","terror.jpg"];
        let generosName = ["humor", "ciencia ficcion", "drama", "anime", "series para adultos",  "terror"]
        
        for index in 0...generosIcon.count-1 {
            
            print(index)
            
            let pic = UIImage(named: generosIcon[index])
            
            
            
        }
    }
}
