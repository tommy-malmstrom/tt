//
//  ContentView.swift
//  TopTracerTest
//
//  Created by Tommy on 2022-04-20.
//

import SwiftUI

/// The ContentView displays either the GreetingsView or the LoginView depening on if the user is authenticated or not
struct ContentView: View {
    @State var user: User = .none

    var body: some View {
        switch user.authenticated {
        case true:
            GreetingsView(name: user.name, user: $user)
        case false:
            LoginView(user: $user)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
