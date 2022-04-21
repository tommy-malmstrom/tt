//
//  GiphyImageData.swift
//  TopTracerTest
//
//  Created by Tommy on 2022-04-21.
//

import Foundation

struct GiphyImageData: Codable, CustomStringConvertible {
    let type: String
    let id: String
    let url: URL
    let images: GiphyImages
    
    var description: String {
        "type: \(type), id: \(id), url: \(url), images: \(images)"
    }
}
