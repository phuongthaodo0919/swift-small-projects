//
//  CoreData_ProjApp.swift
//  CoreData.Proj
//
//  Created by Salmdo on 4/23/23.
//

import SwiftUI

@main
struct CoreData_ProjApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
