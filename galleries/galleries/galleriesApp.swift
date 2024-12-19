//
//  galleriesApp.swift
//  galleries
//
//  Created by Achiel Tyberghien on 29/11/2024.
//

import SwiftUI

@main
struct galleriesApp: App {
    @State var dataStore = GalleryDataStore()
    @State var path = PathStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(dataStore).environment(path)
        }
    }
}
