//
//  ContentView.swift
//  Darst
//
//  Created by Achiel Tyberghien on 05/12/2024.
//

import SwiftUI

struct ContentView: View {
    @State var speler1: String = ""
    @State var speler2: String = ""
    @State var changeScreen: Bool = true
    var body: some View {
        VStack {
            if(changeScreen){
                StartScreen(changeToggle: $changeScreen, player1: $speler1, player2: $speler2)
            }else{
                ScoreScreen(changeToggle: $changeScreen, player1: speler1, player2: speler2)
            }
        }
        .padding()
    }
}


