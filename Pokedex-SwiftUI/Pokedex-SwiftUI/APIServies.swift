//
//  APIServies.swift
//  Pokedex-SwiftUI
//
//  Created by Thuận Nguyễn Văn on 08/08/2021.
//

import Foundation

struct APIServies {
    
    public static let shared = APIServies()
    
    func fetchPokemons(completion: @escaping (Result<[Pokemon], Error>) -> Void) {
        let urlString = PokedexURLs.shared.getAllPokemon()
        guard let urlRequest = URL(string: urlString) else {
            return
        }
        URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            if let error = error {
                print("Response Error")
                completion(.failure(error))
                return
            }
            do {
                guard let data = data else { return }
                let pokemons = try JSONDecoder().decode([Pokemon].self, from: data)
                completion(.success(pokemons))
            } catch let jsonError {
                completion(.failure(jsonError))
                return
            }
        }.resume()
    }
    
}
