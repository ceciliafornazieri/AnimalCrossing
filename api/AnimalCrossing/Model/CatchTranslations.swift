//
//  CatchTranslations.swift
//  AnimalCrossing1
//
//  Created by Mari Higashi on 06/02/23.
//

import Foundation

struct CatchTranslations: Hashable, Codable {
    let catchUSen, catchEUen, catchEUde, catchEUes: String
    let catchUSes, catchEUfr, catchUSfr, catchEUit: String
    let catchEUnl, catchCNzh, catchTWzh, catchJPja: String
    let catchKRko, catchEUru: String

    enum CodingKeys: String, CodingKey {
        case catchUSen = "catch-USen"
        case catchEUen = "catch-EUen"
        case catchEUde = "catch-EUde"
        case catchEUes = "catch-EUes"
        case catchUSes = "catch-USes"
        case catchEUfr = "catch-EUfr"
        case catchUSfr = "catch-USfr"
        case catchEUit = "catch-EUit"
        case catchEUnl = "catch-EUnl"
        case catchCNzh = "catch-CNzh"
        case catchTWzh = "catch-TWzh"
        case catchJPja = "catch-JPja"
        case catchKRko = "catch-KRko"
        case catchEUru = "catch-EUru"
    }
}
