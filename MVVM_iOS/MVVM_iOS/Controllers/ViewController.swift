//
//  ViewController.swift
//  MVVM_iOS
//
//  Created by seunghwan Lee on 2020/11/17.
//  Copyright © 2020 LSH. All rights reserved.
//

import UIKit

// case1 스토리보드를 사용하여 뷰 구성할 경우 
class ViewController: UIViewController {
    
    // MARK: - View
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var adoptionFeeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewModel = DogViewModel()
        
        imageView.image = UIImage(named: viewModel.imageName)
        nameLabel.text = viewModel.name
        ageLabel.text = viewModel.ageText
        adoptionFeeLabel.text = viewModel.adoptionFeeText
    }
}

