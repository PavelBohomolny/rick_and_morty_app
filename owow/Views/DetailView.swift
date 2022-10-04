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
        
        ScrollView {
            
            VStack {
                
                AsyncImage(url: URL(string: character.image)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .scaledToFill()
                
                Text(character.name)
                    .font(.title)
                    .bold()
                    .padding()
                
                HStack {
                    Image(systemName: "location")
                    
                    Text("Location info:")
                }
                .padding()
                
                Text(character.location.name)
                    .padding()
            }
        }
    }
}
