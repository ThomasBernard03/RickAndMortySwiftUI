//
//  ContentView.swift
//  RickAndMorty
//
//  Created by Thomas Bernard on 29/06/2023.
//

import SwiftUI
import TabBar

struct ContentView: View {
    
    
    @ObservedObject var characterService = CharacterService()
    @State private var selection: Item = .first
    @State private var visibility: TabBarVisibility = .visible
    
    var body: some View {
        TabBar(selection: $selection, visibility: $visibility) {
            NavigationView {
                ZStack {
                    Image("Portal")
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
            }.tabItem {
                
                Label("Characters", systemImage: "person.crop.circle")
            }
            .tabItem(for: Item.first)
            
            Text("Second")
                .tabItem(for: Item.second)
        }
        .tabBar(style: CustomTabBarStyle())
        .tabItem(style: CustomTabItemStyle())
        


        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
