//
//  ContentView.swift
//  owow
//
//  Created by Pavel Bohomolnyi on 30/09/2022.
//


import SwiftUI

struct ContentView: View {
    
    @State var selection = 0
    @StateObject var data = RickandMortyDatas()
    
    var body: some View {
        
        TabView(selection: $selection) {
            CharacterList(data: data)
                .tabItem {
                    if selection == 0 {
                        Image(systemName: "house")
                    } else {
                        Image(systemName: "house.fill")
                    }
                }
                .tag(0)
                        
            InfoView()
                .tabItem {
                    if selection == 1 {
                        Image(systemName: "info.circle")
                    } else {
                        Image(systemName: "info.circle.fill")
                    }
                }
                .tag(1)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
