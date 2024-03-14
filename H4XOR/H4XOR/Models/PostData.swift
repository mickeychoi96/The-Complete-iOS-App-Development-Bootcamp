//
//  PostData.swift
//  H4XOR
//
//  Created by 최유현 on 10/26/23.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Identifiable, Decodable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
