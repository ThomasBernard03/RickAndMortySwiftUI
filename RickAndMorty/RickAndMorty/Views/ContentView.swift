//
//  ContentView.swift
//  RickAndMorty
//
//  Created by Thomas Bernard on 29/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    
    @ObservedObject var characterService = CharacterService()
    
    var body: some View {
        NavigationView {
            ZStack {
            
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .position(x: UIScreen.main.bounds.width / 2, y: 0)
                
                
                    
                List(characterService.characters) { character in
                    NavigationLink(destination: CharacterView(character: character)) {
                        CharacterItem(character: character)
                    }
                    
                }.scrollContentBackground(.hidden).padding(.top, 200)
            }.ignoresSafeArea()
                .onAppear(){
                    characterService.getCharacters()
                }
        }
        

        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
