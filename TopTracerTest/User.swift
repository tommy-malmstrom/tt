//
//  User.swift
//  TopTracerTest
//
//  Created by Tommy on 2022-04-20.
//

import Foundation

/// An object representing the users which is authenticated in the app
///
/// There is a common object, none, for a non-authenticated user.
struct User {
    let authenticated: Bool
    let name: String

    private init(authenticated: Bool, name: String) {
        self.authenticated = authenticated
        self.name = name
    }
    
    /// Create a user object for an authenticated user
    /// - Parameter name: The user name
    init(name: String) {
        self.init(authenticated: true, name: name)
    }
    
    /// The common object for a non-authenticated user
    static let none = User(authenticated: false, name: "")
}
