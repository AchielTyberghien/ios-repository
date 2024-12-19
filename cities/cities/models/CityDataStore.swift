//
//  CityDataStore.swift
//  cities
//
//  Created by Achiel Tyberghien on 12/12/2024.
//

import Foundation

@Observable
class CityDatastore {
    var cities : BelgiumData
    var selectedCity: City?
    var selectedAttraction: Attraction?
    
    init() {
        self.cities = load("locations.json")
    }
    
    func setCity (city: City){
        selectedCity = city
    }
    func setAttraction (attraction: Attraction){
        selectedAttraction = attraction
    }

    
    
}
