//
//  PokemonViewModel.swift
//  Pokedex-SwiftUI
//
//  Created by Thuận Nguyễn Văn on 08/08/2021.
//

import Foundation
import SwiftUI

class PokemonViewModel: ObservableObject {
    
    private var pokemons = [Pokemon]()
    
    private init() {
        fetchData()
    }
    
    private func fetchData() {
        APIServies.shared.fetchPokemons { [weak self] result in
            switch result {
            case .success(let pokemons):
                self?.pokemons = pokemons
            case .failure(let error):
                print("Failed to fetch data:\(error)")
            }
        }
    }
    
}
