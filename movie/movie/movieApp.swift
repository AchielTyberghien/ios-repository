//
//  movieApp.swift
//  movie
//
//  Created by Achiel Tyberghien on 22/11/2024.
//

import SwiftUI

@main
struct movieApp: App {
    @State var dataStore = MoviesDataStore()
    @State private var path = Routes()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(dataStore).environment(path)
        }
    }
}
