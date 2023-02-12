//
//  TaskListViewController.swift
//  ToDoApp
//
//  Created by jun.kohda on 2023/02/12.
//

import Foundation
import UIKit

class TaskListViewController: UIViewController {
    
    let tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.rowHeight = 470
        table.layer.backgroundColor = UIColor.white.cgColor
        table.tableFooterView = UIView(frame: .zero)
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        ])
        
        view.backgroundColor = .lightGray
        
    }
    
}

extension TaskListViewController: UITableViewDelegate, UITableViewDataSource {
    
    // table viewに表示するセルの数を返却する
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }

    // 各セルを生成して返却（セルの数だけ呼び出される）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")

        // textやimageをセット
        var config = cell.defaultContentConfiguration()
        config.text = "タスクのタイトル"
        cell.contentConfiguration = config
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
