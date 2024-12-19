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
    
    func login(username: String, password: String) -> Bool {
        let confirm = users.users.contains{ user in
            user.username == username && user.password == password
        }
        if(confirm){
            let user = users.users.filter{ user in
                user.username == username && user.password == password
            }
            loggedinUser = user.first
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
