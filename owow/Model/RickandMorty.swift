//
//  Model.swift
//  owow
//
//  Created by Pavel Bohomolnyi on 30/09/2022.
//

import Foundation

struct RickandMorty: Codable {
    let info: Info
    let results: [Result]
}

struct Info: Codable {
    let count, pages: Int
    let next: String?
    let prev: String?
}

struct Result: Codable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin, location: Location 
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

struct Location: Codable {
    let name: String
    let url: String
}
