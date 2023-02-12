//
//  TaskDetailViewController.swift
//  ToDoApp
//
//  Created by jun.kohda on 2023/02/12.
//

import Foundation
import UIKit

class TaskDetailViewController: UIViewController {
    
    enum Row: String {
        case title
        case body
        
        static var rows: [Row] {
            return [.title, .body]
        }
    }
    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension TaskDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Row.rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = Row.rows[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: row.rawValue, for: indexPath)
        
        var config = cell.defaultContentConfiguration()
        
        switch row {
        case .title:
            config.text = "タイトル"
        case .body:
            config.text = "本文"
//        default:
//            config.text = "デフォルト"
        }
        
        cell.contentConfiguration = config
        
        return cell
    }
    
    
}
