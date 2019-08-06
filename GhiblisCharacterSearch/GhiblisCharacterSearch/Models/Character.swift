//
//  Character.swift
//  GhiblisCharacterSearch
//
//  Created by N on 17/07/2019.
//  Copyright © 2019 N. All rights reserved.
//

import Foundation

class Character : Codable {
    var id: String?
    var name: String?
    var age: String?
    var films: [String]?
    var url: String?
    var hair_color: String?
    
    init(id: String? = nil, name: String? = nil, age: String? = nil, hair_color: String? = nil, films: [String]? = nil, url: String? = nil){
        self.id = id
        self.name = name
        self.age = age
        self.hair_color = hair_color
        self.films = films
        self.url = url
    }
}
