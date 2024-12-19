//
//  OverviewCitiesView.swift
//  cities
//
//  Created by Achiel Tyberghien on 12/12/2024.
//

import SwiftUI

struct OverviewCitiesView: View {
    @Environment(CityDatastore.self) private var dataStore
    var body: some View {
        NavigationSplitView {
            ListOfCitiesView()
        } content: {
            CityView(city: dataStore.selectedCity)
        } detail: {
            AttractionView(attraction: dataStore.selectedAttraction)
        }

    }
}

#Preview {
    OverviewCitiesView()
}
