//
//  GreetingsView.swift
//  TopTracerTest
//
//  Created by Tommy on 2022-04-20.
//

import SwiftUI

struct GreetingsView: View {
    @State var name: String
    
    @State private var giphy = GiphyURL()
    @State private var imageURL: URL? = nil
    
    @Binding var user: User
    
    var body: some View {
        VStack {
            Text("Welcome \(name)")
            
            AsyncImage(url: imageURL) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 150.0, height: 150.0)
            .task {
                imageURL = await giphy.randomImage()
            }
            
            Button(action: {
                user = .none
            }) {
                Text("Logout")
            }.keyboardShortcut(.defaultAction)
        }
    }
}

struct GreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView(name: "Test", user: .constant(.none))
    }
}
