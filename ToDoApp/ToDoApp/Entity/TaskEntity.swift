//
//  TaskEntity.swift
//  ToDoApp
//
//  Created by jun.koda on 2023/02/08.
//

import Foundation

struct Task {
    let id: Int
    let title: String
    let detail: String
    let isCompleted: Bool
    let deadLine: Date
    let createdAt : Date
    let updateAt : Date
    
    static let `default` = Task(id: 0, title: "", detail: "", isCompleted: false, deadLine: Date(), createdAt: Date(), updateAt: Date())
}
