//
//  Gender+CoreDataProperties.swift
//  PracticaApp
//
//  Created by DAM on 6/4/18.
//  Copyright © 2018 DAM. All rights reserved.
//
//

import Foundation
import CoreData


extension Gender {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Gender> {
        return NSFetchRequest<Gender>(entityName: "Gender")
    }

    @NSManaged public var icon: NSData?
    @NSManaged public var name: String?
    @NSManaged public var shows: Show?

}
