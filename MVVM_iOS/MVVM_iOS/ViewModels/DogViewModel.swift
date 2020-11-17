//
//  DogViewModel.swift
//  MVVM_iOS
//
//  Created by seunghwan Lee on 2020/11/17.
//  Copyright © 2020 LSH. All rights reserved.
//

import Foundation
import UIKit

// MARK: - ViewModel
class DogViewModel {
    let dog: Dog
    let calendar: Calendar
    
    init(dog: Dog){
        self.dog = dog
        self.calendar = Calendar(identifier: .gregorian)
    }
    
    var name: String {
        return dog.name
    }
    
    var image: UIImage {
        return dog.image
    }
    
    var ageText: String {
        let today = calendar.startOfDay(for: Date())
        let birthday = calendar.startOfDay(for: dog.birthday)
        let components = calendar.dateComponents([.year], from: birthday, to: today)
        let age = components.year == nil ? 0 : components.year!
        return "\(age) years old"
    }
    
    var adoptionFeeText: String {
        switch dog.breed {
            case .maltese:
                return "₩200000"
            case .pomeranian:
                return "₩500000"
            case .poodle:
                return "₩600000"
            case .pug:
                return "₩400000"
        }
    }
}

extension DogViewModel {
    func configure(_ view: DogView) {
        view.nameLabel.text = name
        view.imageView.image = image
        view.ageLabel.text = ageText
        view.adoptionFeeLabel.text = adoptionFeeText
    }
}
