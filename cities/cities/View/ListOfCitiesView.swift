//
//  ListOfCitiesView.swift
//  cities
//
//  Created by Achiel Tyberghien on 12/12/2024.
//

import SwiftUI

struct ListOfCitiesView: View {
    @Environment(CityDatastore.self) private var dataStore
    @State var selectedCity: City?
    var body: some View {
        VStack{
            List(dataStore.cities.cities, id: \.self, selection: $selectedCity) { city in
                Button {
                    dataStore.setCity(city: city)
                } label: {
                    VStack{
                        Text(city.name)
                        Text(city.description)
                    }.buttonStyle(.plain)
                }
            }
            
        }
        
    }
}

