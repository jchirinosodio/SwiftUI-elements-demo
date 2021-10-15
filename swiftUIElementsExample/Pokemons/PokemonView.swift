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
        VStack {
            List {
                ForEach(pokemonViewModel.pokemonList, id: \.name) { pokemon in
                    Text(pokemon.name ?? "pokemon name not found")
                }
            }.frame(height: 400)
            Spacer()
            Text("Code example: ")
            Image("formsViewImage")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .cornerRadius(5)
            Spacer()
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
