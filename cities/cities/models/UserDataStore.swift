//
//  UserDataStore.swift
//  cities
//
//  Created by Achiel Tyberghien on 12/12/2024.
//

import Foundation

@Observable
class UserDatastore {
    var users : Users
    var loggedinUser : User?
    var username : String = ""
    var password : String = ""
    var tokentry : String = ""
    
    init() {
        self.users = load("users.json")
    }
    
    func getUsers() -> Users{
        return users
    }
    
    func login(loginUser : User) -> Bool {
        let confirm = users.users.contains{ user in
            user.username == loginUser.username && user.password == loginUser.password
        }
        return confirm
    }
    
    func logout(){
        loggedinUser = nil
    }
    
    func getToken() async -> String{
        var codeStore = CodeStore()
        await codeStore.asyncTask()
        return codeStore.result
    }
    
}
