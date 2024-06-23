//
//  DataController.swift
//  Expense Tracker
//
//  Created by Armagan Ercan on 2024-06-20.
//

import Foundation
import CoreData

class DataController:ObservableObject{
    
    let container = NSPersistentContainer(name:"Expense")
    
    
    init(){
        
        container.loadPersistentStores { description, error in
            if let error = error{
                
                print("Failed to load data in data controller \(error.localizedDescription)")
                
            }
        }
        
    }
    
}
