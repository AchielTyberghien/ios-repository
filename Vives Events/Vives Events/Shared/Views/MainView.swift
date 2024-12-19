//
//  SwiftUIView.swift
//  Vives Events
//
//  Created by Achiel Tyberghien on 14/11/2024.
//

import SwiftUI

struct MainView: View {
    @State var selectedEvent : EventModel?
    var body: some View {
        VStack{
            NavigationSplitView{
                SideView(selectedEvent: $selectedEvent)
            }
            detail: {
                VStack{
                    EventDetailView(event: selectedEvent)
                }.toolbar{
                    ToolbarItem(placement: .primaryAction) {
                        NavigationLink("...") {
                            if let selectedEvent = selectedEvent{
                                AddView(event: selectedEvent)
                            }
                        }
                    }
                }
                
            }
        }
    }
}



