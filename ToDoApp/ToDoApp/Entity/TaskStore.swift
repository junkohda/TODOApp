//
//  TaskStore.swift
//  ToDoApp
//
//  Created by jun.koda on 2023/02/08.
//

import Foundation

class TaskStore {
    static let shared = TaskStore()

    private init() {}
    
    var tasks: [Task] = [
        Task(id: 1, title: "title1", detail: "detail1", isCompleted: false, deadLine: Date(), createdAt: Date(), updateAt: Date()),
        Task(id: 1, title: "title2", detail: "detail2", isCompleted: false, deadLine: Date(), createdAt: Date(), updateAt: Date()),
        Task(id: 1, title: "title3", detail: "detail3", isCompleted: false, deadLine: Date(), createdAt: Date(), updateAt: Date())
    ]
}
