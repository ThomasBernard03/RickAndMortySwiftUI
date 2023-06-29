//
//  CharacterService.swift
//  RickAndMorty
//
//  Created by Thomas Bernard on 29/06/2023.
//

import Foundation



struct CharacterService {
    
    
    func getCharacters() -> [Character] {
        
        let character1 = Character(
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
        
        let character2 = Character(
            id: 22,
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
        
        
        return [character1, character2]
        
    }
}
