//
//  WKData.swift
//  WKQatar
//
//  Created by Achiel Tyberghien on 18/10/2024.
//

import Foundation

@Observable
class WKData {
    var results: [WKResult]
    
    init() {
        self.results = load("WKResultsQatar.json")
    }
    
    func getCountries() -> [String]{
        let validMatches = results.filter { result in
            result.homeTeamScore != nil
        }
        let countries = validMatches.map{wkResult in
            wkResult.homeTeam
        }
        
        return Array(Set(countries)).sorted()
    }
    
    func getStadionsOfTeam(team: String) -> [String]{
        let matchOfTeams = results.filter{ result in
            result.awayTeam == team || result.homeTeam == team
        }
        
        let stadionsOfTeam = results.map{ matchResult in
            matchResult.location
        }
        
        return Array(Set(stadionsOfTeam)).sorted()
        
    }
    
    func getMatchesOfStadion(stadion: String) -> [WKResult]{
        let matchesInStadion = results.filter{ matches in
            matches.location == stadion
        }
        return Array(Set(matchesInStadion))
    }
}
