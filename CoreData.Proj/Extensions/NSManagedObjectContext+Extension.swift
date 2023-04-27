//
//  NSManagedObjectContext+Extension.swift
//  CoreData.Proj
//
//  Created by Salmdo on 4/23/23.
//

import Foundation
import CoreData
import UIKit


extension NSManagedObjectContext {
    static var current: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.
    }
}
