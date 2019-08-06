//
//  ServerCard.swift
//  GhiblisCharacterSearch
//
//  Created by N on 05/08/2019.
//  Copyright © 2019 N. All rights reserved.
//

import Foundation

struct ServerCard: Codable {
    var cmc: Int?
    var imageUrl: String?
}

struct ServerCardsResponse: Codable {
    var cards: [ServerCard]?
}
