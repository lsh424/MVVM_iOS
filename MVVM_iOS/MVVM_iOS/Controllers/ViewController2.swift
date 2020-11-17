//
//  ViewController2.swift
//  MVVM_iOS
//
//  Created by seunghwan Lee on 2020/11/17.
//  Copyright © 2020 LSH. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // View
        let dogView = DogView()
        
        // data
        guard let image = UIImage(named: "pomeranian.jpeg") else {return}
        let birthday = Date(timeIntervalSinceNow: (-2 * 86500 * 380))
        
        let pomeranian = Dog(name: "pomeranian", birthday: birthday, breed: .pomeranian, image: image)
        
        let viewModel = DogViewModel(dog: pomeranian)
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
