//
//  DepartureUIView.swift
//  op2_Trip_Planner
//
//  Created by Achiel Tyberghien on 10/10/2024.
//

import SwiftUI

struct FlightUIView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                VStack{
                    Text("BRU")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("AccentColor"))
                    Text("Brussels")
                        .font(.title)
                        .foregroundColor(Color.gray)
                    Text("8:15")
                        .font(.title2)
                    
                }
                VStack(spacing: 0.0){
                    Image(systemName: "airplane")
                        .resizable()
                        .frame(width:50.0,height: 50.0)
                        .foregroundColor(Color.gray)
                }
                VStack{
                    Text("BCN")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("AccentColor"))
                    Text("Barcelona")
                        .font(.title)
                        .foregroundColor(Color.gray)
                    Text("11:15")
                        .font(.title2)
                }
                Spacer()
            }
            Grid{
                Divider().opacity(0)
                GridRow{
                    Text("flight")
                        .foregroundColor(Color.white)
                    Text("gate").foregroundColor(Color.white)
                    Text("seat").foregroundColor(Color.white)
                    
                }
                GridRow{
                    Text("SN23A")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Text("B23")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Text("27A")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                }
                Divider().opacity(0)
            }.padding(.all).background(Color("AccentColor"))
                .cornerRadius(8)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
            HStack{
                VStack{
                    VStack{
                        Text("Passenger")
                            .foregroundColor(Color.gray)
                        Text("Achiel Tyberghien")
                    }
                    VStack{
                        Text("Class")
                            .foregroundColor(Color.gray)
                        Text("Business")
                    }
                    VStack{
                        Text("Flight date")
                            .foregroundColor(Color.gray)
                        Text("27/08/2024")
                    }
                }
                VStack{
                    Image(systemName: "person.crop.artframe")
                        .resizable()
                        .frame(width:150,height:200)
                }
            }
            Spacer()
        }
    }
}

#Preview {
    FlightUIView()
}
