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
    
    var array = [""]
    var gender:Gender = Gender()
    
    var managedContext:NSManagedObjectContext!
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        managedContext = appDelegate?.persistentContainer.viewContext
        
        if (gender.getAll(managedContext: managedContext)?.isEmpty)! {
            
            let generosIcon:[String] = ["cf.gif","drama.gif","manga.gif","sa.jpg","humor.jpg","terror.jpg"];
            let generosName = ["ciencia ficcion", "drama", "anime", "series para adultos", "humor", "terror"]
            
            for index in 0...generosIcon.count {
                
                print(index)
                
                gender.insert(icon: try! NSData(contentsOfFile: generosIcon[index]), name: generosName[index], managedContext: managedContext)
            }
            
        }else{
            
        }
    }

}
