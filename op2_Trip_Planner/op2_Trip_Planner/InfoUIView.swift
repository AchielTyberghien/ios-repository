//
//  InfoUIView.swift
//  op2_Trip_Planner
//
//  Created by Achiel Tyberghien on 10/10/2024.
//

import SwiftUI

struct InfoUIView: View {
    var body: some View {
        VStack{
            Image("Screenshot 2024-10-11 at 12.16.32")
            ScrollView{
                Text("Barcelona")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("AccentColor"))
                Text("Barcelona is a city on the northeastern coast of Spain. It is the capital and largest city of the autonomous community of Catalonia, as well as the second-most populous municipality of Spain. With a population of 1.6 million within city limits, its urban area extends to numerous neighbouring municipalities within the province of Barcelona and is home to around 5.3 million people, making it the fifth most populous urban area of the European Union after Paris, the Ruhr area, Madrid and Milan. It is one of the largest metropolises on the Mediterranean Sea, located on the coast between the mouths of the rivers Llobregat and Besòs, bounded to the west by the Serra de Collserola mountain range.")
                    .foregroundColor(Color.gray)
                    .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                VStack{
                    Divider().opacity(0)
                    Text("Climate")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.top)
                }
                Text("According to the Köppen climate classification, Barcelona has a hot summer Mediterranean climate (Csa), with mild winters and warm to hot summers, while the rainiest seasons are autumn and spring. The rainfall pattern is characterized by a short (3 months) dry season in summer, as well as less winter rainfall than in a typical Mediterranean climate. However, both June and August are wetter than February, which is unusual for the Mediterranean climate. This subtype, labelled as Portuguese by the French geographer George Viers after the climate classification of Emmanuel de Martonne and found in the NW Mediterranean area (e.g. Marseille), can be seen as transitional to the humid subtropical climate (Cfa) found in inland areas.")
                    .foregroundColor(Color.gray)
                    .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    InfoUIView()
}
