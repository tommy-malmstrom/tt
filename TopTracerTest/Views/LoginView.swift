//
//  LoginView.swift
//  TopTracerTest
//
//  Created by Tommy on 2022-04-20.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    @State private var alertNoUsername: Bool = false
    @State private var alertWrongPassword: Bool = false

    @Binding var user: User
    @EnvironmentObject var userAuthenticator: UserAuthenticator
    
    var body: some View {
        VStack {
            HStack {
                Text("Username")
                TextField("", text: $username)
                    .textFieldStyle(.roundedBorder)
            }.padding()
            
            HStack {
                Text("Password")
                SecureField("", text: $password)
                    .textFieldStyle(.roundedBorder)
            }.padding()
            
            HStack(spacing: 40.0) {
                Button(action: {}) {
                    Text("Forgot Password")
                }.disabled(true)
                
                Button(action: {
                    if username.isEmpty {
                        alertNoUsername = true
                    } else if !userAuthenticator.auth(user: username, password: password) {
                        alertWrongPassword = true
                    } else {
                        user = User(name: username)
                    }
                }) {
                    Text("Login")
                }.keyboardShortcut(.defaultAction)
            }
        }
        .alert("Oops!", isPresented: $alertNoUsername, actions: {}) {
            Text("It looks like you forgot to provide a username.")
        }
        .alert("Oops!", isPresented: $alertWrongPassword, actions: {}) {
            Text("The password you provided does not match our records.")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(user: .constant(.none))
    }
}
