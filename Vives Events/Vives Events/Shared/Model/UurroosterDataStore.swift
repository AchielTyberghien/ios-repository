//
//  UurroosterDataStore.swift
//  Vives Events
//
//  Created by Achiel Tyberghien on 14/11/2024.
//

import Foundation

@Observable
class UurroosterDataStore {
    private var uurrooster: [EventModel]
    
    init() {
        let readJSon: ReadJSon = ReadJSon()
        self.uurrooster = readJSon.uurrooster
    }
    
    func getEvents() -> [EventModel] {
        return uurrooster
    }
    
    func getEvent(id: String) -> EventModel? {
        let event = uurrooster.first{ event in
            event.id == id
        }
        return event
    }
    func addEvent(event: EventModel){
        //UUID.uuidString
        uurrooster.append(event)
    }
    
    
}
