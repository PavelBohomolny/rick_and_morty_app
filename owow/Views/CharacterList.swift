//
//  CharacterList.swift
//  owow
//
//  Created by Pavel Bohomolnyi on 30/09/2022.
//

import SwiftUI

struct CharacterList: View {
    
    @ObservedObject var data: RickandMortyDatas
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(data.responses, id: \.page) { response in
                    
                    ForEach(Array(response.element.results.enumerated()), id: \.element.id) { character in
                                                
                        CharacterView(
                            image: character.element.image,
                            name: character.element.name,
                            status: character.element.status,
                            stats: character.element.status.stats(),
                            species: character.element.species,
                            spec: character.element.species.spec(),
                            gender: character.element.gender,
                            gndr: character.element.gender.gndr()
                        )
                        .onAppear {
                            guard character.offset == response.element.results.count - 1,
                                  let next = response.element.info.next,
                                  let pageString = next.components(separatedBy: "?page=").last,
                                  let nextPage = Int(pageString)
                            else { return }
                            data.loadPage(nextPage)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Characters"))
            .listStyle(PlainListStyle())
            .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear{ data.loadPage(1) }
    }
}

struct CharacterList_Previews: PreviewProvider {
    static var previews: some View {
        CharacterList(data: RickandMortyDatas())
    }
}
