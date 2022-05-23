//
//  PostData.swift
//  Hac News
//
//  Created by Alec Mac on 5/21/22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    var id: String {
        return self.objectID
    }
}
