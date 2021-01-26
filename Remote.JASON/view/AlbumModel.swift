//
//  AlbumModel.swift
//  Remote.JASON
//
//  Created by Bala Murali on 26/01/2021.
//

import foundation

struct AlbumImage: Codable, Identifable{
    let albumId, id: Int
    let title: String
    let url, thumbnailUrl: String
}
