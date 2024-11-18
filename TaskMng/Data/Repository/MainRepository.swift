//
//  MainRepository.swift
//  TaskMng
//
//  Created by Nahit Habibov on 18.11.24.
//

import Foundation

struct Contacts: Codable {
    let id: Int
    let first: String?
    let last: String?
    let phone: String?
    let email: String?
}

class MainRepository: DataManagerProtocol {
   
    var data: DataManager = DataManager()
    
    func loadJson(completion: @escaping(Result<[Contacts], DataError>) -> Void) {
        data.loadJson(filenName: "contacts") { result in
            completion(result)
        }
    }
}
