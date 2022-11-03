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
                        TagsInfo(title: status, backGr: stats)
                        TagsInfo(title: species, backGr: spec)
                        TagsInfo(title: gender, backGr: gndr)
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
struct TagsInfo: View {
    
    var title: String
    var backGr: Color
    
    var body: some View {
        Text(title)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .padding(.leading, 5)
            .padding(.trailing, 5)
            .background(backGr)
            .cornerRadius(3)
    }
}
