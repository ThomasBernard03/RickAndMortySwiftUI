//
//  CharacterItem.swift
//  RickAndMorty
//
//  Created by Thomas Bernard on 29/06/2023.
//

import SwiftUI

struct CharacterItem: View {
    
    let character : Character
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: character.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            } placeholder: {
                Color.accentColor
            }
            .frame(width: 80, height: 80)
            
            VStack(alignment: .leading) { // Aligner le texte à gauche
                Text(character.name)
                    .foregroundColor(.white)
                Text(character.species)
                    .foregroundColor(.white)
            }
            .padding(.leading, 10) // Ajouter un espace à gauche du texte
            
            Spacer() // Prendre tout l'espace restant
        }
        .frame(maxWidth: .infinity) // Prendre toute la largeur de la liste
        .background(Color("CharacterItemBackgroundColor"))
        .cornerRadius(12)
    }
}

struct CharacterItem_Previews: PreviewProvider {
    

    static let character = Character(
        id: 21,
        name: "Aqua Morty",
        status: "unknown",
        species: "Humanoid",
        type: "Fish-Person",
        gender: "Male",
        origin: Origin(name: "unknown", url: ""),
        location: Location(name: "Citadel of Ricks", url: "https://rickandmortyapi.com/api/location/3"),
        image: "https://rickandmortyapi.com/api/character/avatar/21.jpeg",
        episode: ["https://rickandmortyapi.com/api/episode/10", "https://rickandmortyapi.com/api/episode/22"],
        url: "https://rickandmortyapi.com/api/character/21",
        created: "2017-11-04T22:39:48.055Z"
    )
    
    static var previews: some View {
        CharacterItem(character: self.character).previewLayout(.sizeThatFits)
    }
}
