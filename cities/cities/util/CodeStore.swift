//
//  CodeStore.swift
//  Examen1
//
//  Created by Dirk Hostens on 13/12/2023.
//

import Foundation

class CodeStore {
    var result = ""
    var status = Status.loading
    
    func asyncTask() async {
        
            do {
                // Simulate a task that takes 3 seconds
                let result = try await withCheckedThrowingContinuation { continuation in
                    DispatchQueue.global().asyncAfter(deadline: .now() + 10) {
                        // Complete the continuation with the desired result after 3 seconds
                        var code = self.generateCode()
                        continuation.resume(returning: "\(code)")
                    }
                }

                // Update the UI with the result
                self.result = result
                self.status = Status.success
            } catch {
                // Handle errors if needed
                print("Error: \(error)")
                self.status = Status.error
            }
        
    }
    func generateCode() -> String {
        var code = ""
        for number in 1...5 {
            code = code + String(Int.random(in: 0...9))
        }
        return code
    }
}
