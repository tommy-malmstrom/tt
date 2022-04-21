//
//  GiphyImage.swift
//  TopTracerTest
//
//  Created by Tommy on 2022-04-21.
//

import Foundation

struct GiphyImage: Codable, CustomStringConvertible {
    let height: String
    let width: String
    let size: String
    let url: URL
    
    var description: String {
        "height: \(height), width: \(width), size: \(size), url: \(url)"
    }
}
