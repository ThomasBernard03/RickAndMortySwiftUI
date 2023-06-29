//
//  CharacterView.swift
//  RickAndMorty
//
//  Created by Thomas Bernard on 29/06/2023.
//

import SwiftUI

struct CharacterView: View {
    
    let character : Character
    
    var body: some View {
        
        VStack {
            AsyncImage(url: URL(string: character.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            } placeholder: {
                Color.accentColor
            }
            VStack(alignment: .leading) {
                HStack {
                    Text(character.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                }

                HStack {
                    Text(character.species)
                    Spacer()
                }
                
                HStack {
                    Text(character.location.name)
                    Image(systemName: "globe.europe.africa.fill")
                        .foregroundColor(.accentColor)
                    Spacer()
                }
                Spacer()
            }
            .frame(maxHeight: .infinity)
            .padding(.all)
            

        }.edgesIgnoringSafeArea(.horizontal)
    }
}

struct CharacterView_Previews: PreviewProvider {
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
        CharacterView(character: character)
    }
}
