//
//  GiphyImageContainer.swift
//  TopTracerTest
//
//  Created by Tommy on 2022-04-21.
//

import Foundation

struct GiphyImageContainer: Codable, CustomStringConvertible {
    let data: GiphyImageData
    let meta: GiphyMetaData

    var description: String {
        "data: \(data), meta: \(meta)"
    }
}
