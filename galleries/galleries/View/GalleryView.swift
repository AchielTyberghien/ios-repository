//
//  GalleryView.swift
//  galleries
//
//  Created by Achiel Tyberghien on 29/11/2024.
//

import SwiftUI

struct GalleryView: View {
    @Environment(GalleryDataStore.self) private var dataStore
    @Environment(PathStore.self) private var path
    @State var selectedArtist : Artist?
    var gallery: Gallery
    var body: some View {
        @Bindable var path = path
        VStack{
            NavigationStack(path: $path.path){
                VStack{
                        Text(gallery.name).font(.title).bold().foregroundColor(.brown)
                        Divider()
                    Text(gallery.location).bold()
                    Text(gallery.description).font(.subheadline).foregroundColor(.gray)
                        Divider()
                    Text("List of artists").foregroundColor(.brown)
                        List(dataStore.getArtistInGallery(gallery: gallery), id: \.self, selection: $selectedArtist){ artist in
                                NavigationLink(value: Route.ArtistView(value: artist)){
                                    VStack{
                                        Text(artist.name).foregroundColor(.brown)
                                        Text(artist.nationality).font(.subheadline).foregroundColor(.gray)
                                    }
                                }
                        }
                }.navigationDestination(for: Route.self){ route in
                    switch route {
                    case let .GalleryView(value: value):
                        GalleryView(gallery: value)
                    case let .ArtistView(value: value):
                        ArtistView(artist: value)
                    case let .ArtworkView(value: value, value2: value2):
                        ArtworkView(artwork: value, artist: value2)
                        
                    }
                }
                
            }
            
            
        }
    }
}
