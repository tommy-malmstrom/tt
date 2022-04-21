//
//  GiphyImages.swift
//  TopTracerTest
//
//  Created by Tommy on 2022-04-21.
//

import Foundation

struct GiphyImages: Codable, CustomStringConvertible {
    let fixed_width_still: GiphyImage
    let preview_gif: GiphyImage
    
    var description: String {
        "fixed_width_still: \(fixed_width_still), preview_gif: \(preview_gif)"
    }
}
