//
//  Vives_EventsApp.swift
//  Vives Events
//
//  Created by Achiel Tyberghien on 14/11/2024.
//

import SwiftUI

@main
struct Vives_EventsApp: App {
    @State var dataStore = UurroosterDataStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(dataStore)
        }
    }
}
