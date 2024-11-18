//
//  MainViewModel.swift
//  TaskMng
//
//  Created by Nahit Habibov on 18.11.24.
//

import Foundation

protocol MainViewModelDelegate: AnyObject {
    func didRequiredReload()
    func didReceiveError(error: Error)
}

protocol MainViewModel {
    var contacts: [Contacts] { get }
    func loadData()
}

class MainViewModelImplm: MainViewModel {
    
    weak var delegate: MainViewModelDelegate?
    
    var contacts: [Contacts] = [] {
        didSet {
            delegate?.didRequiredReload()
        }
    }
    
    private var mainRepo: MainRepository
    
    init(mainRepo: MainRepository) {
        self.mainRepo = mainRepo
    }
    
    func loadData() {
        mainRepo.loadJson { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let data):
                contacts = data
            case .failure(let error):
                delegate?.didReceiveError(error: error)
            }
        }
    }
}
