//
//  ContentView.swift
//  movie
//
//  Created by Achiel Tyberghien on 22/11/2024.
//

import SwiftUI



struct ContentView: View {
    @Environment(Routes.self) private var path
    @Environment(MoviesDataStore.self) private var dataStore
    @State var movie: Movie?
    var body: some View {
        @Bindable var path = path
        NavigationStack(path: $path.routes){
            VStack{
                List(dataStore.getMovies().movies, id: \.self, selection: $movie){ movie in
                    NavigationLink(value: Route.MovieDetail(value: movie)){
                        VStack{
                            Text(movie.title).bold().frame(maxWidth: .infinity, alignment: .leading)
                            Text(movie.description).frame(maxWidth: .infinity, alignment: .leading)
                        }
                        
                    }
                    
                }
            }
        }
        
    }
}

