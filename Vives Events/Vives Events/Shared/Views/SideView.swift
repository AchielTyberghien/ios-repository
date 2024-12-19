//
//  SideView.swift
//  Vives Events
//
//  Created by Achiel Tyberghien on 14/11/2024.
//

import SwiftUI

struct SideView: View {
    @Binding var selectedEvent : EventModel?
    @Environment(UurroosterDataStore.self) private var dataStore
    var body: some View {
        VStack{
            List(dataStore.getEvents(), id: \.self, selection: $selectedEvent){ event in
                Text(DateUtil.formatDateTime(date: event.startDateTime))
                Text(event.title)
            }
        }.toolbar{
            ToolbarItem(placement: .primaryAction) {
                NavigationLink("+") {
                    AddView()
                }
            }
        }
    }
}

