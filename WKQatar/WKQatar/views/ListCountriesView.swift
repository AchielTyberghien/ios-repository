//
//  ListCountriesView.swift
//  WKQatar
//
//  Created by Achiel Tyberghien on 18/10/2024.
//

import SwiftUI

struct ListCountriesView: View {
    @Environment(WKData.self) private var wkData
    @State var selectedCountry: String?
    var body: some View {
        VStack{
            List(wkData.getCountries(),id: \.self, selection: $selectedCountry) { country in
                Text(country)
            }
            if let sCountry = selectedCountry{
                NavigationLink("Next"){
                    OverviewView(isSelected: $selectedCountry)
                }
            }
            
        }
    }
}
