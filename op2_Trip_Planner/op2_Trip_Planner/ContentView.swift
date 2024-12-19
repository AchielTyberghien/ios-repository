//
//  ContentView.swift
//  op2_Trip_Planner
//
//  Created by Achiel Tyberghien on 10/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView{
                Tab("Departure", systemImage: "airplane.departure"){
                    FlightUIView()
                }
                Tab("Info", systemImage: "info.bubble.fill"){
                    InfoUIView()
                }
                Tab("Return", systemImage: "airplane.arrival"){
                    FlightUIView()
                }
            }
        }
        .padding()
    }
}
struct flightInfo {
    var depCode: String
    var depPlace: String
    var depTime: String
    var arrCode: String
    var arrPlace: String
    var arrTime: String
    var flightnumber: String
    var gate: String
    var seat: String
    var pasName : String
    var classe: String
    var date: String
    init(depCode: String, depPlace: String, depTime: String, arrCode: String, arrPlace: String, arrTime: String, flightnumber: String, gate: String, seat: String, pasName: String, classe: String, date: String) {
        self.depCode = depCode
        self.depPlace = depPlace
        self.depTime = depTime
        self.arrCode = arrCode
        self.arrPlace = arrPlace
        self.arrTime = arrTime
        self.flightnumber = flightnumber
        self.gate = gate
        self.seat = seat
        self.pasName = pasName
        self.classe = classe
        self.date = date
    }
}

#Preview {
    ContentView()
}
