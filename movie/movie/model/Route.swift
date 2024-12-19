//
//  Route.swift
//  movie
//
//  Created by Achiel Tyberghien on 28/11/2024.
//

import Foundation

enum Route: Hashable {
    case MovieDetail(value: Movie)
    case ActorDetail(value: Actor)
    case DirectorDetail(value: Director)
}

@Observable
class Routes {
    var routes = [Route]()
}
