//
//  Gender+CoreDataClass.swift
//  PracticaApp
//
//  Created by DAM on 16/3/18.
//  Copyright © 2018 DAM. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Gender)
public class Gender: NSManagedObject {

    
    func getAll(managedContext:NSManagedObjectContext) -> [Gender]? {
        
        let fetchRequest = NSFetchRequest<Gender>(entityName: "Gender")
        //fetchRequest.predicate = NSPredicate(format: "name == %@ and password == %@")
        
        
        
        do{
            //let result = try! managedContext.fetch(fetchRequest)
            
            let result = try! managedContext.fetch(fetchRequest) as [Gender]
            
            if result.count > 0 {
                return nil
            }else {
                return nil
            }
            
        }catch let error as NSError {
            print("Error al obtener los datos \(error)")
            return nil
        }
    }
    
}
