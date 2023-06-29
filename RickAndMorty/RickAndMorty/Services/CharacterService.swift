//
//  CharacterService.swift
//  RickAndMorty
//
//  Created by Thomas Bernard on 29/06/2023.
//

import Foundation



class CharacterService: ObservableObject {
    
    @Published var characters : [Character] = []
    
    
    func getCharacters() {
        
        let apiService = APIService()
        apiService.fetchResource(resource: "character") { (characters: [Character]?) in
            guard let characters = characters else {
                print("Error fetching characters")
                return
            }
            
            
            DispatchQueue.main.async {
                self.characters = characters
            }
            
            
        }
    }
}
