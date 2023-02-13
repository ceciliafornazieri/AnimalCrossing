//
//  RegionName.swift
//  AnimalCrossing1
//
//  Created by Mari Higashi on 06/02/23.
//

import Foundation

struct RegionName: Hashable, Codable {
    let nameUSen, nameEUen, nameEUde, nameEUes, nameUSes, nameEUfr, nameUSfr, nameEUit, nameEUnl, nameCNzh, nameTWzh, nameJPja, nameKRko, nameEUru: String
    
    enum CodingKeys: String, CodingKey {
        case nameUSen = "name-USen"
        case nameEUen = "name-EUen"
        case nameEUde = "name-EUde"
        case nameEUes = "name-EUes"
        case nameUSes = "name-USes"
        case nameEUfr = "name-EUfr"
        case nameUSfr = "name-USfr"
        case nameEUit = "name-EUit"
        case nameEUnl = "name-EUnl"
        case nameCNzh = "name-CNzh"
        case nameTWzh = "name-TWzh"
        case nameJPja = "name-JPja"
        case nameKRko = "name-KRko"
        case nameEUru = "name-EUru"
    }
}
