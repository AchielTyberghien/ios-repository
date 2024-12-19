//
//  LoginView.swift
//  cities
//
//  Created by Achiel Tyberghien on 12/12/2024.
//

import SwiftUI

struct LoginView: View {
    @State var userDataStore = UserDatastore()
    @State var login : Login = Login()
    var body: some View {
        VStack{
            GroupBox("Login user") {
                VStack{
                    HStack{
                        Image(systemName: "person")
                        TextField("username?", text: $login.username)
                    }
                    HStack{
                        Image(systemName: "person.badge.key")
                        TextField("password?", text: $login.password)
                    }
                    HStack{
                        Image(systemName: "number.square")
                        TextField("token?", text: $login.tokentry)
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

