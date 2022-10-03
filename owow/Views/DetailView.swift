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
        
            Text("Location info:")
                .padding()
            
            Text(character.location.name)
                .padding()
        }
    }
}
