//
//  GiphyURL.swift
//  TopTracerTest
//
//  Created by Tommy on 2022-04-20.
//

import Foundation
import UIKit

struct GiphyURL {
    private static let endpoint = "https://api.giphy.com/v1/gifs/random"
    private static let api_key = "DsCShhQ3aGnQ4l6gczuyo9Dk2U2P9GXG" // TODO: Handle key in project
    
    private var request: URLRequest? {
        guard
            let url = URL(string: "\(GiphyURL.endpoint)?api_key=\(GiphyURL.api_key)")
        else {
            return nil
        }
        
        return URLRequest(url: url)
    }
    
    func randomImage() async -> URL? {
        let decoder = JSONDecoder()

        guard
            let request = request,
            let (data, response) = try? await URLSession.shared.data(for: request),
            (response as? HTTPURLResponse)?.statusCode == 200,
            let giphyImageContainer = try? decoder.decode(GiphyImageContainer.self, from: data)
        else {
            return nil
        }

        print("Giphy: \(giphyImageContainer)")
        
        return giphyImageContainer.data.images.preview_gif.url
    }
}
