//
//  calView.swift
//  rpn-cal
//
//  Created by Achiel Tyberghien on 17/10/2024.
//

import SwiftUI

struct CalView: View {
    @State var calcEngine = CalEngine()
    var body: some View {
        Grid {
            GridRow {
                TextEditor(text: .constant(calcEngine.displayString))
                    .frame(width: 100, height: 150)
                    .border(.black, width: 2)
                    .padding()
                Grid {
                    GridRow {
                        ForEach(7..<10) { number in
                            InvertedButton(number: number){_  in calcEngine.addToTempString(value:number)}
                        }
                        Button("/") {
                            calcEngine.oparate(change: "/")
                        }.gridCellColumns(1)
                    }
                    GridRow {
                        ForEach(4..<7) { number in
                            InvertedButton(number: number){_  in calcEngine.addToTempString(value:number)}
                        }
                        Button("X") {
                            calcEngine.oparate(change: "X")
                        }.gridCellColumns(1)
                    }
                    GridRow {
                        ForEach(1..<4) { number in
                            InvertedButton(number: number){_  in calcEngine.addToTempString(value:number)}
                        }
                        Button("-") {
                            calcEngine.oparate(change: "-")
                        }
                    }
                    GridRow {
                        InvertedButton(number: 0){_  in calcEngine.addToTempString(value:0)}.gridCellColumns(3).gridCellAnchor(.leading)
                        Button("+") {
                            calcEngine.oparate(change: "+")
                        }
                    }
                    GridRow {
                        Button("Clear") {
                            calcEngine.clearAll()
                        }.gridCellColumns(2)
                        Button("Enter") {
                            calcEngine.addNumberToStack()
                        }.gridCellColumns(2)
                    }
                }
            }
            Button("Show stack") {
                calcEngine.showStack()
            }
        }
    }
}
