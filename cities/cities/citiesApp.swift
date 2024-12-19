//
//  citiesApp.swift
//  cities
//
//  Created by Achiel Tyberghien on 12/12/2024.
//

import SwiftUI

@main
struct citiesApp: App {
    @State var dataStore = CityDatastore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(dataStore)
        }
    }
}