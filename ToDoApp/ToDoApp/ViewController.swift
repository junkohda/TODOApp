//
//  ViewController.swift
//  ToDoApp
//
//  Created by jun.kohda on 2023/02/07.
//

import UIKit

class ViewController: UIViewController {

    private var label: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: UIScreen.main.bounds.height/2, width: UIScreen.main.bounds.width, height: 50))
        label.textAlignment = .center
        label.text = "No Storyboard!"
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(label)
    }


}

