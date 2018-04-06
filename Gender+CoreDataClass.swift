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

    func insert(icon:NSData, name:String, managedContext:NSManagedObjectContext) -> Bool{
        
        let genderEntity = NSEntityDescription.entity(forEntityName: "Gender", in: managedContext)
        
        let newGender = Gender(entity: genderEntity!, insertInto: managedContext)
        
        newGender.icon = icon
        newGender.name = name
        
        //Añadir resto de attr si hay tiempo
        
        do{
            try! managedContext.save()
                return true
        }catch let error as NSError {
            print("Error al salvar el genero \(error)")
            return false
        }
        return false
    }
    
    func getAll(managedContext:NSManagedObjectContext) {
        
        let fetchRequest = NSFetchRequest<Gender>(entityName: "Gender")
        fetchRequest.predicate = NSPredicate(format: "name != nil")
        
        do{
            //let result = try! managedContext.fetch(fetchRequest)
            
            let result = try managedContext.fetch(fetchRequest)
            
            if result.count > 0 {
                //return nil
            }else {
                //return nil
            }
            
        }catch let error as NSError {
            print("Error al obtener los datos \(error)")
            //return nil
        }
    }
    
}
