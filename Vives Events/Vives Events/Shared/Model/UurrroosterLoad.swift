//
//  UurrrosterModelData.swift
//  Uurrooster
//
//  Created by Dirk Hostens on 23/08/2022.
//

import Foundation

 //var uurroosterData : [UurroosterModel] = load("./recuurrooster.json")

/*func getUurroosterData() -> [EventModel] {
    print("ophalen data")
    return load("./resources/uurrooster.json")
}*/

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
