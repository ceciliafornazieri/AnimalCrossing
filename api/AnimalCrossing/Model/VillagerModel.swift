//
//  VillagerModel.swift
//  AnimalCrossing1
//
//  Created by Mari Higashi on 06/02/23.
//

import Foundation

struct VillagerModel: Codable, Hashable, Identifiable {
    
    var id: Int
    var fileName: String?
    var name: RegionName?
    var personality: String
    var birthdayString: String?
    var birthday: String
    var species: String
    var gender: String
    var subtype: String
    var hobby: String
    var catchPhrase: String?
    var icon_uri: String?
    var image_uri: String?
    var bubbleColor: String?
    var textColor: String?
    var saying: String
    var catchTranslations: CatchTranslations?
    
    enum CondingKeys: String, CodingKey {
        case id
        case fileName = "\"file-name\""
        case name
        case personality
        case birthdayString = "birthday-string"
        case birthday
        case species
        case gender
        case subtype
        case hobbyspecies
        case catchPhrase = "catch-phrase"
        case icon_uri
        case image_uri
        case bubbleColor = "bubble-color"
        case textColor = "text-color"
        case saying
        case catchTranslations = "catch-translations"
    }
}
