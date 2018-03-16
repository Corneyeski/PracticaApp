//
//  Show+CoreDataProperties.swift
//  PracticaApp
//
//  Created by DAM on 2/3/18.
//  Copyright © 2018 DAM. All rights reserved.
//
//

import Foundation
import CoreData


extension Show {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Show> {
        return NSFetchRequest<Show>(entityName: "Show")
    }

    @NSManaged public var name: String?
    @NSManaged public var nSubscribers: Int16
    @NSManaged public var style: String?
    @NSManaged public var icon: NSData?
    @NSManaged public var backgroundIcon: NSData?
    @NSManaged public var desc: String?
    @NSManaged public var subscribers: NSSet?
    @NSManaged public var createdBy: User?

}

// MARK: Generated accessors for subscribers
extension Show {

    @objc(addSubscribersObject:)
    @NSManaged public func addToSubscribers(_ value: User)

    @objc(removeSubscribersObject:)
    @NSManaged public func removeFromSubscribers(_ value: User)

    @objc(addSubscribers:)
    @NSManaged public func addToSubscribers(_ values: NSSet)

    @objc(removeSubscribers:)
    @NSManaged public func removeFromSubscribers(_ values: NSSet)

}
