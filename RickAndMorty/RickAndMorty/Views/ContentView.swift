//
//  ContentView.swift
//  RickAndMorty
//
//  Created by Thomas Bernard on 29/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    
    let characters : [Character] = CharacterService().getCharacters()
    
    var body: some View {
        
        ZStack {
            
            
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .position(x: UIScreen.main.bounds.width / 2, y: 0)
            
            
                
            List(characters) { character in
                HStack{
                    CharacterItem(character: character)
                }
                
            }.scrollContentBackground(.hidden).padding(.top, 200)
        }.ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
