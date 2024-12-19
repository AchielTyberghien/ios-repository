//
//  SwiftUIView.swift
//  Vives Events
//
//  Created by Achiel Tyberghien on 15/11/2024.
//

import SwiftUI

struct AddView: View {
    @State var event : EventModel = EventModel()
    @Environment(UurroosterDataStore.self) private var dataStore
    var body: some View {
        VStack{
                Text("Title?")
            Divider()
                TextField("",text: $event.title)
            Divider()
                TextField("Location?", text: $event.location)
            Divider()
                    HStack{
                        Toggle("All Day?", isOn: $event.allDay)
                    }
            if (!event.allDay){
                Text("Start date & Time?")
                DatePicker(selection: $event.startDateTime){Text("")}
                Text("End date & Time?")
                DatePicker(selection: $event.endDateTime){Text("")}
            }else{
                Text("Date & Time?")
                DatePicker(selection: $event.startDateTime){Text("")}
            }
            Picker("",selection: $event.type){
                Text("Academic")
                Text("Course")
            }.pickerStyle(.segmented)
            
            if (event.id == "") {
                HStack{
                    Button("Save"){
                        
                    }
                    Button("Cancel"){
                        event = EventModel()
                    }
                }
            }else{
                HStack{
                    Button("Update"){
                        
                    }
                    Button("Cancel"){
                        event = EventModel()
                    }
                }
            }
                
            
        }.padding(20)
            
    }
}
