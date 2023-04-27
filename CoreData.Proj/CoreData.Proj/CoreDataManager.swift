//
//  CoreDataManager.swift
//  CoreData.Proj
//
//  Created by Salmdo on 4/23/23.
//

import Foundation
import CoreData

class CoreDataManager {
    var moc: NSManagedObjectContext
    
    private init (moc: NSManagedObjectContext){
        self.moc = moc
    }
}
