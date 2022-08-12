//
//  ModelData.swift
//  Landmarks
//
//  Created by Eric Hanna on 2022-08-08.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = Load("landmarkData.json")
}

func Load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("no file")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("can't load")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("can't parse")
    }
}
