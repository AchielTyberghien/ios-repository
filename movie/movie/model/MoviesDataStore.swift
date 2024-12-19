//
//  MovieDataStore.swift
//  movie
//
//  Created by Achiel Tyberghien on 22/11/2024.
//

import Foundation
@Observable
class MoviesDataStore {
    private var movieList: Movies
    
    init() {
        self.movieList = load("movies.json")
    }
    
    func getMovies() -> Movies {
        return movieList
    }
    
    func getMoviesOfActor(actor: Actor) -> Movies{
        var movies : Movies = Movies()
        let result = movieList.movies.filter{ movie in
            movie.actors.contains(actor)
        }
        movies.movies = result
        return movies
    }
    
    func getMoviesOfDirector(director: Director) -> Movies{
        var movies : Movies = Movies()
        let result = movieList.movies.filter{ movie in
            movie.director == director
        }
        movies.movies = result
        return movies
    }
    
    func getActorsWorkingWithDirector(director: Director) -> [Actor]{
        let result = movieList.movies.filter{ movie in
            movie.director == director
        }
        let listOfActors = result.flatMap{ movie in
            movie.actors
            
        }
        return listOfActors
    }
}
