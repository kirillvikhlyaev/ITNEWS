//
//  PostData.swift
//  ITNEWS
//
//  Created by Кирилл on 10.07.2022.
//  Copyright © 2022 Kirill. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
