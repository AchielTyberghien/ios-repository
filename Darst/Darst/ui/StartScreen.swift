//
//  StartScreen.swift
//  Darst
//
//  Created by Achiel Tyberghien on 05/12/2024.
//

import SwiftUI

struct StartScreen: View {
    @Binding var changeToggle : Bool
    @Binding var player1: String
    @Binding var player2: String
    var body: some View {
        HStack{
            Spacer()
            VStack{
                Text("Speler 1")
                TextField("naam", text: $player1)
                Text("Speler 2")
                TextField("naam", text: $player2)
                Divider()
                Text("Vul de namen in van de spelers...")
                Button("Speel"){
                    changeToggle.toggle()
                }
            }
            Spacer()
        }
        
        
    }
}

