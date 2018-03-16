//
//  ViewController.swift
//  PracticaApp
//
//  Created by DAM on 2/3/18.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit
import CoreData


class ViewController: UIViewController {

    var userFunctions:User = User();
    
    var managedContext:NSManagedObjectContext!
    let appDelegate = UIApplication.shared.delegate as? AppDelegate

    @IBOutlet weak var entrar: UIButton!
    
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func login(_ sender: Any) {
        
        if name.text != "" && password.text != "" {
            
            //let s:User = User(nombre: "aa", pass: "aa")
            
            if userFunctions.login(name: name.text!, password: password.text!, managedContext: managedContext) {
                entrar.sendActions(for: .touchUpInside)
            }else {
                print("error")
            }
            
            /*user.name = name.text
            user.password = password.text
            
            if userFunctions.login(user: user) {
                
            }else{
                
            }*/
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        managedContext = appDelegate?.persistentContainer.viewContext
        
        
    }
}

