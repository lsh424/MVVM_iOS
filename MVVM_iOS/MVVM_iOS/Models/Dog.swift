//
//  Dog.swift
//  MVVM_iOS
//
//  Created by seunghwan Lee on 2020/11/17.
//  Copyright © 2020 LSH. All rights reserved.
//

import UIKit

// MARK: - Model
class Dog {
    
    // 개 품종
    enum Breed {
        case maltese
        case pomeranian
        case pug
        case poodle
    }
    
    let name: String
    let birthday: Date
    let breed: Breed
    let image: UIImage
    
    init(name: String, birthday: Date, breed: Breed, image: UIImage) {
        self.name = name
        self.birthday = birthday
        self.breed = breed
        self.image = image
    }
}


