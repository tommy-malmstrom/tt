//
//  TopTracerTestApp.swift
//  TopTracerTest
//
//  Created by Tommy on 2022-04-20.
//

import SwiftUI

@main
struct TopTracerTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserAuthenticator())
        }
    }
}
