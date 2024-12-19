//
//  ArtistView.swift
//  galleries
//
//  Created by Achiel Tyberghien on 29/11/2024.
//

import SwiftUI

struct ArtistView: View {
    @Environment(GalleryDataStore.self) private var dataStore
    @Environment(PathStore.self) private var path
    var artist: Artist
    var body: some View {
        @Bindable var path = path
        VStack{
            Text(artist.name)
            Text(artist.nationality)
            Text(artist.style)
            Text(artist.description)
            Text("List of art")
            VStack{
                List(artist.artworks, id: \.id){ artwork in
                    VStack{
                        NavigationLink(value: Route.ArtworkView(value: artwork, value2: artist)){
                            Text(artwork.title)
                            Text(artwork.description)
                        }
                    }
                    
                }
            }
            
        }
    }
}
