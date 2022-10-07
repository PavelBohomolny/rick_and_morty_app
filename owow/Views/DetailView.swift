//
//  DetailView.swift
//  owow
//
//  Created by Pavel Bohomolnyi on 30/09/2022.
//

import SwiftUI

struct DetailView: View {
    
    var character: Result
    
    var body: some View {
        
        VStack {
            
            Text(character.name)
                .font(.title)
                .bold()
                .padding()
            
            AsyncImage(url: URL(string: character.image)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .scaledToFill()

            List {
                HStack {
                    Text("🟢")
                    Text("Status")
                    Spacer()
                    Text(character.status)
                }
                HStack{
                    Text("🧬")
                    Text("Species")
                    Spacer()
                    Text(character.species)
                }
                HStack {
                    Text("👤")
                    Text("Gender")
                    Spacer()
                    Text(character.gender)
                }
                HStack {
                    Text("📍")
                    Text("Location")
                    Spacer()
                    Text(character.location.name)
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
    }
}
