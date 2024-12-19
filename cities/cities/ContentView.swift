//
//  ContentView.swift
//  cities
//
//  Created by Achiel Tyberghien on 12/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack{
                LoginView()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
