//
//  PokedexURLs.swift
//  Pokedex-SwiftUI
//
//  Created by Thuận Nguyễn Văn on 08/08/2021.
//

import Foundation

struct PokedexURLs {
    
    private var baseUrl = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    public static let shared = PokedexURLs()
    
    func getAllPokemon() -> String {
        return baseUrl
    }
}
