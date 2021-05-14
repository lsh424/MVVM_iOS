//
//  Dog.swift
//  MVVM_iOS
//
//  Created by seunghwan Lee on 2020/11/17.
//  Copyright © 2020 LSH. All rights reserved.
//

import Foundation

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
    let imageName: String
    
    init(name: String = "pomeranian", birthday: Date = Date(timeIntervalSinceNow: (-2 * 86500 * 380)), breed: Breed = .pomeranian, imageName: String = "pomeranian.jpeg") {
        self.name = name
        self.birthday = birthday
        self.breed = breed
        self.imageName = imageName
    }
}





