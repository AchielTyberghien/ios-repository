//
//  OverView.swift
//  WKQatar
//
//  Created by Achiel Tyberghien on 18/10/2024.
//

import SwiftUI

struct OverviewView: View {
    @Environment(WKData.self) private var wkData
    @Binding var isSelected : String?
    @State var selectedStadion: String?
    var body: some View {
        NavigationSplitView{
            if let isSelected = isSelected{
                List(wkData.getStadionsOfTeam(team: isSelected), id: \.self,
                     selection: $selectedStadion){ stadion in
                    Text(stadion)
                }
            }
        }content: {
            
        }detail: {
            
        }
    }
}
