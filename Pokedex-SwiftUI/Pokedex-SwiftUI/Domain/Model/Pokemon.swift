//
//  Pokemon.swift
//  Pokedex-SwiftUI
//
//  Created by Thuận Nguyễn Văn on 08/08/2021.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}
