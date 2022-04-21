//
//  GiphyMetaData.swift
//  TopTracerTest
//
//  Created by Tommy on 2022-04-21.
//

import Foundation

struct GiphyMetaData: Codable, CustomStringConvertible {
    let msg: String
    let status: Int
    let response_id: String

    var description: String {
        "msg: \(msg), status: \(status), response_id: \(response_id)"
    }
}
