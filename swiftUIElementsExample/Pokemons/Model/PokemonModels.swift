//
//  Pokemon.swift
//  swiftUIElementsExample
//
//  Created by Jose Chirinos Odio on 13/10/21.
//

import Foundation

struct Pokemon: Codable {
    let url: String?
    let name: String?
    let height: Int?
    let weight: Float?
    let id: Int?
    let abilities: [PokemonAbility?]?
    
    
}

struct PokemonAbility: Codable{
    let name: String?
    
}

struct PokemonResponse: Decodable {
    let pokemons: [Pokemon]?
    
    enum CodingKeys: String, CodingKey {
        case results
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.pokemons = try container.decode([Pokemon].self, forKey: .results)
    }
}
