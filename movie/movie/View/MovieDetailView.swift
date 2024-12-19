//
//  MovieDetailView.swift
//  movie
//
//  Created by Achiel Tyberghien on 22/11/2024.
//

import SwiftUI

struct MovieDetailView: View {
    @Environment(Routes.self) private var path
    var movie : Movie
    @State var actor: Actor?
    var body: some View {
        @Bindable var path = path
        VStack{
            Text(movie.title).foregroundColor(.red).font(.title)
            Text(movie.description).frame(maxWidth: .infinity, alignment: .leading)
            Divider().foregroundColor(.red)
            Spacer()
            Text("Actors").bold()
            List(movie.actors, id: \.self, selection: $actor){ actor in
                NavigationLink(value: Route.ActorDetail(value: actor)){
                    HStack{
                        Text(actor.firstName)
                        Text(actor.lastName)
                    }.foregroundColor(.red)
                }.buttonStyle(PlainButtonStyle()).frame(maxWidth: .infinity, alignment: .center)
                
            }
            Divider()
            Text("Director")
            NavigationLink(value: Route.DirectorDetail(value: movie.director)){
                HStack{
                    Text(movie.director.firstName)
                    Text(movie.director.lastName)
                }
            }
            Spacer()
            Divider()
            Text("Overview navigatioStack")
            List(path.routes, id: \.self) { route in
                Button(action: {
                    // Navigate back to the selected route
                    if let index = path.routes.lastIndex(of: route) {
                        path.routes.removeLast(path.routes.count - index - 1)
                    }
                }) {
                    HStack {
                        Text(routeDescription(for: route))
                    }
                }
            }
        
        }
    }
    private func routeDescription(for route: Route) -> String {
            switch route {
            case .MovieDetail(let movie):
                return "Movie: \(movie.title)"
            case .ActorDetail(let actor):
                return "Actor: \(actor.firstName) \(actor.lastName)"
            case .DirectorDetail(let director):
                return "Director: \(director.firstName) \(director.lastName)"
            }
        }
}


