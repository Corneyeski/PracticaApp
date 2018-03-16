//
//  RegistroController.swift
//  PracticaApp
//
//  Created by DAM on 9/3/18.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit
import CoreData

class RegistroController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var pass1: UITextField!
    @IBOutlet weak var pass2: UITextField!
    @IBOutlet weak var euser: UILabel!
    @IBOutlet weak var epass: UILabel!
    @IBOutlet weak var ecampos: UILabel!
    
    @IBOutlet weak var back: UIButton!
    var userFunctions:User = User();
    
    var managedContext:NSManagedObjectContext!
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    @IBAction func registro(_ sender: Any) {
        
        if name.text != "" && pass1.text != "" && pass2.text != "" {
            
            if pass1.text == pass2.text {
                
                if !userFunctions.insert(name: name.text!, password: pass1.text!, managedContext: managedContext) {
                    euser.isHidden = false
                }else{
                    back.sendActions(for: .touchUpInside)
                }
                
            }else{
                epass.isHidden = false
            }
        }else{
            ecampos.isHidden = false
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        managedContext = appDelegate?.persistentContainer.viewContext
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
