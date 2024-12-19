//
//  WKQatarApp.swift
//  WKQatar
//
//  Created by Achiel Tyberghien on 18/10/2024.
//

import SwiftUI

@main
struct WKQatarApp: App {
    @State var dataStore = WKData()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(dataStore)
            
        }
    }
}
