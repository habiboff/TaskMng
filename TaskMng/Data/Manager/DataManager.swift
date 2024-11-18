//
//  DataManager.swift
//  TaskMng
//
//  Created by Nahit Habibov on 18.11.24.
//

import Foundation

// MARK:  add custom error

protocol DataManagerProtocol {
    
}

class DataManager {
    
    func loadJson<T: Decodable>(filenName: String, completion: @escaping (Result<T, Error>) -> Void) {
        
    }
}
