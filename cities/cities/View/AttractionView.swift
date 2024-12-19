//
//  AttractionView.swift
//  cities
//
//  Created by Achiel Tyberghien on 13/12/2024.
//

import SwiftUI

struct AttractionView: View {
    var attraction: Attraction?
    var body: some View {
        VStack{
            if let attraction = attraction{
                Text(attraction.name)
                Divider()
                Text(attraction.description)
                Spacer()
                Text("Simular attractions")
                Divider()
            }else{
                Text("Select attraction ...")
            }
            Text("test")
            
        }
    }
}

