//
//  EventDetailView.swift
//  Vives Events
//
//  Created by Achiel Tyberghien on 14/11/2024.
//

import SwiftUI

struct EventDetailView: View {
    var event: EventModel?
    var body: some View {
        if let event = event {
            Text(event.title)
            Divider()
            if (event.location == "") {
                Text("Locatie niet gekend")
            }else{
                Text(event.location)
            }
            if (event.allDay){
                Text(DateUtil.formatDate(date: event.startDateTime))
            }else{
                HStack{
                    Text("Start")
                    Text(DateUtil.formatDateTime(date: event.startDateTime))
                }
                HStack{
                    Text("Einde")
                    Text(DateUtil.formatDateTime(date: event.endDateTime))
                }
            }
            Divider()
            
            
        }
        
    }
}


