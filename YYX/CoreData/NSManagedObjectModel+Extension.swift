//
//  NSManagedObjectModel+Extension.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/5/27.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import CoreData

extension NSManagedObjectModel{
    static func giveMeInstance()-> NSManagedObjectModel{
        return AppDelegate.giveMeAppDelegate().persistentContainer.managedObjectModel
    }
}
