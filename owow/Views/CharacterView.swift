//
//  CharacterView.swift
//  owow
//
//  Created by Pavel Bohomolnyi on 30/09/2022.
//

import SwiftUI

struct CharacterView: View {
    
    let image: String
    let name: String
    let status: String
    let stats: Color
    let species: String
    let spec: Color
    let gender: String
    let gndr: Color
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            HStack(spacing: 10) {
                
                // Image
                AsyncImage(url: URL(string: image)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 55, height: 55)
                .cornerRadius(5)
                
                VStack (alignment: .leading, spacing: 5) {
                    
                    // Name
                    Text(name)
                        .fontWeight(.bold)
                    
                    // Tags
                    HStack {
                        Text(status)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.leading, 5)
                            .padding(.trailing, 5)
                            .background(stats)
                            .cornerRadius(3)
                        
                        Text(species)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.leading, 5)
                            .padding(.trailing, 5)
                            .background(spec)
                            .cornerRadius(3)
                            .lineLimit(1)
                        
                        Text(gender)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.leading, 5)
                            .padding(.trailing, 5)
                            .background(gndr)
                            .cornerRadius(3)
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView(image: "", name: "", status: "", stats: Color.clear, species: "", spec: Color.clear, gender: "", gndr: Color.clear)
    }
}
