//
//  CityView.swift
//  cities
//
//  Created by Achiel Tyberghien on 13/12/2024.
//

import SwiftUI

struct CityView: View {
    @Environment(CityDatastore.self) private var dataStore
    @State var selectedAttraction : Attraction?
    var city : City?
    var body: some View {
        VStack{
            if let city = city {
                Text(city.name)
                Divider()
                Text("List of attractions")
                List(city.attractions, id: \.self, selection: $selectedAttraction) { attraction in
                    Button {
                        dataStore.setAttraction(attraction: attraction)
                    } label: {
                        Text(attraction.name)
                        Text(attraction.category)
                    }

                    
                }
                
            }else{
                Text("Select city ...")
            }
                
        }
        
    }
}


