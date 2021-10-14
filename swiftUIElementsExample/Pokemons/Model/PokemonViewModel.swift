//
//  PokemonViewModel.swift
//  swiftUIElementsExample
//
//  Created by Jose Chirinos Odio on 13/10/21.
//

import Foundation

class PokemonViewModel: ObservableObject {
    @Published var pokemonList: [Pokemon] = []
    
    func getPokemonList() {
        let url = URL(string: "https://pokeapi.co/api/v2/pokemon/?offset=0&limit=151")!
        
        URLSession.shared.dataTask(with: url) { data, urlResponse, error in
            if let requestError = error {
                print(requestError)
            }
            if let requestData = data, let response = urlResponse as? HTTPURLResponse, response.statusCode == 200 {
                let pokemonsResponse = try! JSONDecoder().decode(PokemonResponse.self, from: requestData)
                self.pokemonList = pokemonsResponse.pokemons ?? []
            }
        }.resume()
    }
}
