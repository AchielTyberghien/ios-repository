//
//  ContentView.swift
//  galleries
//
//  Created by Achiel Tyberghien on 29/11/2024.
//

import SwiftUI

struct ContentView: View {
    @State var selectedGallery : Gallery?
    var body: some View {
        VStack {
            TabView{
                Tab("Galleries", systemImage: "building.columns.fill"){
                    ListOfGalleriesView(selectedGallery: $selectedGallery)
                }
                if let selectedGallery = selectedGallery{
                    Tab(selectedGallery.name, systemImage: "paintpalette.fill"){
                        GalleryView(gallery: selectedGallery)
                    }
                }else{
                    Tab("No Gallery", systemImage: "paintpalette.fill"){
                        Text("No gallery selected")
                    }
                }
                
                
            }
        }
    }
}
