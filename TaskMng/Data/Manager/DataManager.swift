//
//  DataManager.swift
//  TaskMng
//
//  Created by Nahit Habibov on 18.11.24.
//

import Foundation

// add custom error

enum DataError: Error {
    case fileNotfound
    case decodeError(Error)
}

protocol DataManagerProtocol {
    var data: DataManager { get set }
}

class DataManager {
    
    func loadJson<T: Decodable>(filenName: String, completion: @escaping (Result<T, DataError>) -> Void) {
        
        if let url = Bundle.main.url(forResource: filenName, withExtension: "json") {
            
            do {
                let data = try Data(contentsOf: url)
                let decode = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decode))
            } catch {
                completion(.failure(.decodeError(error)))
            }
        } else {
            completion(.failure(.fileNotfound))
        }
    }
}
