//
//  User+CoreDataClass.swift
//  PracticaApp
//
//  Created by DAM on 2/3/18.
//  Copyright © 2018 DAM. All rights reserved.
//
//

import Foundation
import CoreData

@objc(User)
public class User: NSManagedObject {

    /*var nombreUsu:String = " "
    var passUsu:String = " "
    
    init(nombre:String?,password:String?){
        self.nombreUsu = nombre!
        self.password = password!
    }
    
    convenience init(nombre:String?, pass:String?){
        super.init(context: managedContext)
        self.nombreUsu = nombre!
        self.passUsu = pass!
    }*/
    
    var managedContext:NSManagedObjectContext!

    func insert(name:String, password:String, managedContext:NSManagedObjectContext) -> Bool{
        
        print(name)
        print(password)
        
        let userEntity = NSEntityDescription.entity(forEntityName: "User", in: managedContext)
        
        let newUser = User(entity: userEntity!, insertInto: managedContext)
        
        newUser.name = name
        newUser.password = password
        
        //Añadir resto de attr si hay tiempo
        
        do{
            if exist(name: name, password: password, managedContext: managedContext) {
                try! managedContext.save()
                return true
            }
        }catch let error as NSError {
            print("Error al salvar el usuario \(error)")
            return false
        }
        return false
    }
    
    func exist(name:String, password:String, managedContext:NSManagedObjectContext) -> Bool {
        
        print(name)
        print(password)
        
        let fetchRequest = NSFetchRequest<User>(entityName: "User")
        fetchRequest.predicate = NSPredicate(format: "name == %@", name)
        
        do{
            let result = try! managedContext.fetch(fetchRequest)
            
            if result.count > 0 {
                return true
            }else {
                return false
            }
            
        }catch let error as NSError {
            print("Error al obtener el usuario \(error)")
            return false
        }
    }
    
    func login(name:String, password:String, managedContext:NSManagedObjectContext) -> Bool {
        
        let fetchRequest = NSFetchRequest<User>(entityName: "User")
        fetchRequest.predicate = NSPredicate(format: "name == %@ and password == %@", name, password)
        
        do{
            let result = try! managedContext.fetch(fetchRequest)
            
            if result.count > 0 {
                return true
            }else {
                return false
            }
            
        }catch let error as NSError {
            print("Error al obtener el usuario \(error)")
            return false
        }
    }
    
}
