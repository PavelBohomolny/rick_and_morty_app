//
//  InfoView.swift
//  owow
//
//  Created by Pavel Bohomolnyi on 30/09/2022.
//


import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Agency")
                .bold()
                .textCase(.uppercase)
            
            Link(destination: URL(string: "https://owow.io/")!) {
                    Image("owow")
            }
            
            Text("Designed by")
                .bold()
                .textCase(.uppercase)
                .padding()
            Link("Pavel Bohomolnyi", destination: URL(string: "https://www.linkedin.com/in/pavel-bohomolnyi/")!)
            Spacer()
            Text("2022")
                .padding()
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
