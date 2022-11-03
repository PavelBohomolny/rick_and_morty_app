//
//  ContentView.swift
//  owow
//
//  Created by Pavel Bohomolnyi on 30/09/2022.
//


import SwiftUI

struct ContentView: View {
    
    @StateObject var data = RickandMortyDatas()
    
    var body: some View {
        
        TabView {
            CharacterList(data: data)
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
            
            InfoView()
                .tabItem {
                    VStack {
                        Image(systemName: "info.circle")
                        Text("Account")
                        
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
