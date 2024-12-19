//
//  SwiftUIView.swift
//  WKQatar
//
//  Created by Achiel Tyberghien on 07/11/2024.
//

import SwiftUI

struct MatchesInStadion: View {
    @Environment(WKData.self) private var wkData
    @Binding var isSelectedStadion : String?
    var body: some View {
        if let isSelectedStadion = isSelectedStadion{
            ForEach(wkData.getMatchesOfStadion(stadion: isSelectedStadion),id: \.self){ match in
                Grid{
                    GridRow{
                        Text(match.homeTeam)
                        Text("-")
                        Text(match.awayTeam)
                    }
                    GridRow{
                        Text(match.homeTeam)
                        Text("-")
                        Text(match.awayTeam)
                    }
                }
            }
        }
    }
}


