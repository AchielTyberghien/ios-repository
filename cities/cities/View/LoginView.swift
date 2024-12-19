//
//  LoginView.swift
//  cities
//
//  Created by Achiel Tyberghien on 12/12/2024.
//

import SwiftUI

struct LoginView: View {
    @State var userDataStore = UserDatastore()
    @State var username: String = ""
    @State var password: String = ""
    @State var token : String = ""
    var body: some View {
        VStack{
            GroupBox("Login user") {
                VStack{
                    HStack{
                        Image(systemName: "person")
                        TextField("username?", text: $username)
                    }
                    HStack{
                        Image(systemName: "person.badge.key")
                        TextField("password?", text: $password)
                    }
                    HStack{
                        Image(systemName: "number.square")
                        TextField("token?", text: $token)
                    }
                    NavigationLink("login"){
                        OverviewCitiesView()
                    }
                }
            }
            Text("Token")
            
        }.border(.black)
        
    }
}

