//
//  AuthManager.swift
//  EmailAuth
//
//  Created by Ela Howard on 2023-05-12.
//

import Foundation
import FirebaseAuth


struct AuthDataResultModel{
    let uid: String
    let email: String?
    let photourl: String?
   
    init(user: User)
    {
        self.uid = user.uid
        self.email = user.email
        self.photourl = user.photoURL?.absoluteString
        
    }

}

final class AuthManager{
    static let shared=AuthManager()
    private init () {}


func createUser(email: String, password: String) async throws->AuthDataResultModel
{
    let authDataResult=try await Auth.auth().createUser(withEmail: email, password: password) return AuthDataResultModel(user: authDataResult.user)
}

}
