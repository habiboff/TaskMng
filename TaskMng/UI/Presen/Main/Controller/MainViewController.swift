//
//  MainViewController.swift
//  TaskMng
//
//  Created by Nahit Habibov on 18.11.24.
//

import UIKit

class MainViewController: UIViewController {
    
    private lazy var viewModel: MainViewModel = {
        let vm = MainViewModelImplm(mainRepo: .init())
        vm.delegate = self
        return vm
    }()
        
    private lazy var tableView: UITableView = {
        let view = UITableView()
        view.delegate = self
        view.dataSource = self
        view.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.description())
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        view.addSubview(tableView)
        tableView.frame = view.frame
        
        viewModel.loadData()
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = viewModel.contacts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.description(), for: indexPath)
        
        cell.textLabel?.text = item.first.notNull
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}

extension MainViewController: MainViewModelDelegate {
    func didRequiredReload() {
        tableView.reloadData()
    }
    
    func didReceiveError(error: any Error) {
        print(error.localizedDescription)
    }
}

extension String? {
    var notNull: String {
        if let self, !self.isEmpty {
            return self
        } else {
            return "N/A"
        }
    }
}
