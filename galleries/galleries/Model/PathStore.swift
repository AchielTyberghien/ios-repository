//
//  File.swift
//  galleries
//
//  Created by Achiel Tyberghien on 29/11/2024.
//

import Foundation


enum Route : Hashable {
    case GalleryView(value: Gallery)
    case ArtistView(value: Artist)
    case ArtworkView(value: Artwork, value2: Artist)
}

@Observable
class PathStore{
    var path = [Route]()
}
