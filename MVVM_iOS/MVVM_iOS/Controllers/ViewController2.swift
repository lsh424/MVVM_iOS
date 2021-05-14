//
//  ViewController2.swift
//  MVVM_iOS
//
//  Created by seunghwan Lee on 2020/11/17.
//  Copyright © 2020 LSH. All rights reserved.
//

import UIKit

// case2 코드를 사용하여 뷰 구성할 경우
class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // View
        let dogView = DogView()
        
        let viewModel = DogViewModel()
        viewModel.configure(dogView)
        
        self.view.addSubview(dogView)
        
        // layout
        dogView.translatesAutoresizingMaskIntoConstraints = false
        dogView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 135).isActive = true
        dogView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        dogView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9).isActive = true
        dogView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
    }
}

