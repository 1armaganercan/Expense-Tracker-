//
//  Expense_TrackerApp.swift
//  Expense Tracker
//
//  Created by Armagan Ercan on 2024-06-20.
//

import SwiftUI

@main
struct Expense_TrackerApp: App {
    
    
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
