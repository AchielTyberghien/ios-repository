//
//  ListOfGalleriesView.swift
//  galleries
//
//  Created by Achiel Tyberghien on 29/11/2024.
//

import SwiftUI

struct ListOfGalleriesView: View {
    @Environment(GalleryDataStore.self) private var dataStore
    @Binding var selectedGallery : Gallery?
    var body: some View {
        VStack{
            List(dataStore.getGalleries().galleries, id: \.self, selection: $selectedGallery){ gallery in
                VStack{
                    Text(gallery.name).font(.title).bold().foregroundColor(.brown)
                    Text(gallery.location).bold()
                    Text(gallery.description).font(.footnote).foregroundColor(.gray).lineLimit(1)
                }
                
            }
        }.padding()
    }
}

