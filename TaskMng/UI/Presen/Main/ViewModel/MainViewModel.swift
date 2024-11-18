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
    func loadData()
}

class MainViewModelImplm: MainViewModel {
    
    weak var delegate: MainViewModelDelegate?
    
    func loadData() {

    }
}
