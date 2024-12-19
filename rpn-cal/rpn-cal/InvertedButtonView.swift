//
//  InvertedButton.swift
//  rpn-cal
//
//  Created by Achiel Tyberghien on 17/10/2024.
//

import SwiftUI

struct InvertedButton: View {
    var number: Int
    var calEngine: (Int) -> Void
    var body: some View {
        Button("\(number)"){
            calEngine(number)
        }.colorInvert()
    }
}


