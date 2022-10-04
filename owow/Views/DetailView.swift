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
            .frame(width: 150, height: 150)
            .cornerRadius(5)
        

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
