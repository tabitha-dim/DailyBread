//
//  DataController.swift
//  sermonsApp
//
//  Created by Tabitha Dimyan on 10/6/22.
//

import CoreData
import Foundation
import SwiftUI


class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "sermonsDB")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
    
    @StateObject private var dataController = DataController()
    
    
}






