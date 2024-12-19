//
//  ActorDetailView.swift
//  movie
//
//  Created by Achiel Tyberghien on 22/11/2024.
//

import SwiftUI

struct ActorDetailView: View {
    @Environment(Routes.self) private var path
    var actor: Actor
    @State var selectedMovie: Movie?
    var body: some View {
        @Bindable var path = path
        VStack{
            HStack{
                Text(actor.firstName)
                Text(actor.lastName)
            }
            Divider()
            Text(actor.birthday)
            Spacer()
            Divider()
            Text("Movie")
            List(MoviesDataStore().getMoviesOfActor(actor: actor).movies, id: \.self, selection: $selectedMovie){ movie in
                NavigationLink(value: Route.MovieDetail(value: movie)){
                    VStack{
                        Text(movie.title)
                    }
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


