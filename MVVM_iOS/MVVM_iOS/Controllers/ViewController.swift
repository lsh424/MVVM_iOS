//
//  ViewController.swift
//  MVVM_iOS
//
//  Created by seunghwan Lee on 2020/11/17.
//  Copyright © 2020 LSH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - View
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var adoptionFeeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // data
        guard let image = UIImage(named: "pomeranian.jpeg") else {return}
        let birthday = Date(timeIntervalSinceNow: (-2 * 86500 * 380))
        
        let pomeranian = Dog(name: "pomeranian", birthday: birthday, breed: .pomeranian, image: image)
        
        
        let viewModel = DogViewModel(dog: pomeranian)
        
        imageView.image = viewModel.image
        nameLabel.text = viewModel.name
        ageLabel.text = viewModel.ageText
        adoptionFeeLabel.text = viewModel.adoptionFeeText
    }
}

