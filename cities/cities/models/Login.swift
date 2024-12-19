//
//  File.swift
//  cities
//
//  Created by Achiel Tyberghien on 12/12/2024.
//

import Foundation

class Login {
    
    
    func getToken() async -> String{
        var codeStore = CodeStore()
        await codeStore.asyncTask()
        return codeStore.result
    }
}

