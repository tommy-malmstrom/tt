//
//  UserAuthenticator.swift
//  TopTracerTest
//
//  Created by Tommy on 2022-04-20.
//

import Foundation

/// A service object for handling user authentication
///
/// At the moment it is only validating against one single and common password for all users.
final class UserAuthenticator: ObservableObject {
    
    private let singlePassword = "password"
    
    /// Authenticate a user
    /// - Parameter user: The user name to authenticate
    /// - Parameter password: The supplied password for verification
    /// - Returns true if the user and password matches, false otherwise.
    func auth(user: String, password: String) -> Bool {
        guard
            !user.isEmpty,
            singlePassword == password
        else {
            return false
        }
        
        return true //User(authenticated: true, name: user)
    }
}
