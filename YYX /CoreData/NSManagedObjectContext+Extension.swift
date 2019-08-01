//
//  NSManagedObjectContext+Extension.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/5/27.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import CoreData

extension NSManagedObjectContext{
    static func giveMeViewContext() -> NSManagedObjectContext{
        return AppDelegate.giveMeAppDelegate().persistentContainer.viewContext
    }
  
}
