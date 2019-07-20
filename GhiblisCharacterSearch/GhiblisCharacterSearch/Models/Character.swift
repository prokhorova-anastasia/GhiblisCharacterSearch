//
//  Character.swift
//  GhiblisCharacterSearch
//
//  Created by N on 17/07/2019.
//  Copyright © 2019 N. All rights reserved.
//

import Foundation

class Character {
    var id: String?
    var name: String?
    var age: String?
    var films: String?
    var url: String?
    
    init(id: String? = nil, name: String? = nil, age: String? = nil, films: String? = nil, url: String? = nil){
        self.id = id
        self.name = name
        self.age = age
        self.films = films
        self.url = url
    }
}
