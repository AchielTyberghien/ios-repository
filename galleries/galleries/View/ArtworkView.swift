//
//  ArtworkView.swift
//  galleries
//
//  Created by Achiel Tyberghien on 29/11/2024.
//

import SwiftUI

struct ArtworkView: View {
    @Environment(GalleryDataStore.self) private var dataStore
    @Environment(PathStore.self) private var path
    var artwork: Artwork
    var artist: Artist
    var body: some View {
        VStack{
            Text(artwork.title)
            Divider()
            Text(artwork.medium)
            Text(artwork.dimensions)
            Text(artwork.description)
            Divider()
            Text("artist: \(artist.name)")
            Divider()
            Text("List of other art")
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


