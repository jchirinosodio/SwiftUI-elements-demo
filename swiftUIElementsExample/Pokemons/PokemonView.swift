//
//  PokemonView.swift
//  swiftUIElementsExample
//
//  Created by Jose Chirinos Odio on 13/10/21.
//

import SwiftUI

struct PokemonView: View{
    @StateObject var pokemonViewModel: PokemonViewModel = PokemonViewModel()
    
    
    var body: some View {
  
            List{
                ForEach(pokemonViewModel.pokemonList, id: \.name) { pokemon in
                    Text(pokemon.name ?? "pokemon name not found")
                }
            }.onAppear {
                pokemonViewModel.getPokemonList()
            }.navigationTitle("Pokemons")
        }
    
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView()
    }
}
