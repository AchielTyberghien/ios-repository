//
//  ScoreScreen.swift
//  Darst
//
//  Created by Achiel Tyberghien on 05/12/2024.
//

import SwiftUI

struct ScoreScreen: View {
    @Binding var changeToggle : Bool
    var player1: String
    var player2: String
    @State var points1 : Int = 501
    @State var points2: Int = 501
    @State var score1 : Int = 0
    @State var score2: Int = 0
    @State var beurt: Bool = true
    @State var worp: Int = 0
    @State var triple: Bool = false
    @State var double: Bool = false
    @State var worpen : [String]

    var body: some View {
        VStack{
            Grid{
                GridRow{
                    if(beurt){
                        Text(player1).foregroundColor(.red)
                        Text(player2)
                    }else{
                        Text(player1)
                        Text(player2).foregroundColor(.red)
                    }
                }
                GridRow{
                    if(beurt){
                        Text("\(points1 - worp)").foregroundColor(.red)
                        Text("\(points2)")
                    }else{
                        Text("\(points1)")
                        Text("\(points2 - worp)").foregroundColor(.red)
                    }
                    
                }
            }
            Divider()
            Text("score speler \(worp)")
            
            HStack{
                Button {
                    worp = 0
                } label: {
                    Image(systemName: "arrowshape.turn.up.left.circle.fill")
                }
                Button {
                    if(beurt){
                        points1 = points1 - worp
                        worp = 0
                    }else{
                        points2 = points2 - worp
                        worp = 0
                    }
                    beurt.toggle()
                } label: {
                    Image(systemName: "checkmark.circle.fill")
                }

            }
            HStack{
                Button("Bull") {
                    worp = worp + 25
                }
                Button("Bull's eye") {
                    worp = worp + 50
                }
                Button("Triple") {
                    triple.toggle()
                    double = false
                }
                Button("Double") {
                    double.toggle()
                    triple = false
                }
            }
            Grid{
                GridRow{
                    ForEach(1...5, id: \.self){ number in
                        Button("\(number)") {
                            if(double){
                                worp = worp + (number * 2)
                            }else if (triple){
                                worp = worp + (number * 3)
                            }else{
                                worp = worp + number
                            }
                            
                        }
                    }
                }
                GridRow{
                    ForEach(6...10, id: \.self){ number in
                        Button("\(number)") {
                            if(double){
                                worp = worp + (number * 2)
                            }else if (triple){
                                worp = worp + (number * 3)
                            }else{
                                worp = worp + number
                            }
                        }
                    }
                }
                GridRow{
                    ForEach(11...15, id: \.self){ number in
                        Button("\(number)") {
                            if(double){
                                worp = worp + (number * 2)
                            }else if (triple){
                                worp = worp + (number * 3)
                            }else{
                                worp = worp + number
                            }
                        }
                    }
                }
                GridRow{
                    ForEach(16...20, id: \.self){ number in
                        Button("\(number)") {
                            if(double){
                                worp = worp + (number * 2)
                            }else if (triple){
                                worp = worp + (number * 3)
                            }else{
                                worp = worp + number
                            }
                        }
                    }
                }
            }
            if(beurt){
                
                HStack{
                    worpen = DartsUtil().getDoublesToFinish(score: score1)
                    ForEach(worpen, id: \.self){ worps in
                        Text(worps)
                        
                    }
                }
                
            }else{
                
                HStack{
                    worpen = DartsUtil().getDoublesToFinish(score: score2)
                    ForEach(worpen, id: \.self){ worps in
                        Text(worps)
                        
                    }
                }
            }

        }
    }
}
