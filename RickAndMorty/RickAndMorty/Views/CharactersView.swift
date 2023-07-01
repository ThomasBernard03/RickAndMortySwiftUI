//
//  CharactersView.swift
//  RickAndMorty
//
//  Created by Thomas Bernard on 30/06/2023.
//

import SwiftUI

struct CharactersView: View {
    @ObservedObject var characterService = CharacterService()
    
    var body: some View {
        NavigationView {
            VStack {
                //Image("Portal")
                //    .resizable()
                //    .aspectRatio(contentMode: .fit)
                //    .position(x: UIScreen.main.bounds.width / 2, y: 0)
                
            
                
                List(characterService.characters) { character in
                    NavigationLink(destination: CharacterView(character: character)) {
                        CharacterItem(character: character)
                    }
                    
                }.scrollContentBackground(.hidden)
            }.background(Color("BackgroundColor"))
            .onAppear(){
                characterService.getCharacters()
            }
        }
    }
}

struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
            .previewLayout(.sizeThatFits)
    }
}
