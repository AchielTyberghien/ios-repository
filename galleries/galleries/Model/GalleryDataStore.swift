//
//  GalleryDataStore.swift
//  galleries
//
//  Created by Achiel Tyberghien on 29/11/2024.
//

import Foundation

@Observable
class GalleryDataStore {
    private var galleryList: Galleries
    
    init() {
        self.galleryList = load("galleries.json")
    }
    
    func getGalleries() -> Galleries {
        return galleryList
    }
    
    func getArtistInGallery(gallery: Gallery) -> [Artist] {
        return gallery.artists
    }
    
    func getArtworkFromArtist(artist: Artist) -> [Artwork] {
        return artist.artworks
    }
    
}
