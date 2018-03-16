//
//  User+CoreDataProperties.swift
//  PracticaApp
//
//  Created by DAM on 2/3/18.
//  Copyright © 2018 DAM. All rights reserved.
//
//

import Foundation
import CoreData




extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }
    
    @NSManaged public var name: String?
    @NSManaged public var password: String?
    @NSManaged public var email: String?
    @NSManaged public var icon: NSData?
    @NSManaged public var edit: Bool
    @NSManaged public var subscribed: NSSet?
    @NSManaged public var created: NSSet?
       
}


// MARK: Generated accessors for subscribed
extension User {

    @objc(addSubscribedObject:)
    @NSManaged public func addToSubscribed(_ value: Show)

    @objc(removeSubscribedObject:)
    @NSManaged public func removeFromSubscribed(_ value: Show)

    @objc(addSubscribed:)
    @NSManaged public func addToSubscribed(_ values: NSSet)

    @objc(removeSubscribed:)
    @NSManaged public func removeFromSubscribed(_ values: NSSet)

}

// MARK: Generated accessors for created
extension User {

    @objc(addCreatedObject:)
    @NSManaged public func addToCreated(_ value: Show)

    @objc(removeCreatedObject:)
    @NSManaged public func removeFromCreated(_ value: Show)

    @objc(addCreated:)
    @NSManaged public func addToCreated(_ values: NSSet)

    @objc(removeCreated:)
    @NSManaged public func removeFromCreated(_ values: NSSet)

}
