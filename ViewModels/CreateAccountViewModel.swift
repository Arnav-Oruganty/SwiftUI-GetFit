//
//  CreateAccountViewModel.swift
//  GetFit
//
//  Created by Arnav Oruganty on 23/07/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class CreateAccountViewModel : ObservableObject {
    @Published var email = ""
    @Published var name = ""
    @Published var password = ""
    @Published var errorMessage = ""
    @Published var profilePic = "profile"
    
    init() {}
    
    func CreateAccount () {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            
            self?.insertUserData(id: userId)
        }
    }
    
    private func insertUserData (id: String) {
        let newUser = User (id: id,
                            name: name,
                            email: email,
                            joined: Date().timeIntervalSince1970, 
                            profilePic: profilePic)
        
        let database = Firestore.firestore()
        
        database.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    private func validate () -> Bool {
        errorMessage = ""
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email."
            return false
        }
        
        guard password.count >= 6 else {
            errorMessage = "Please enter a password longer than 6 characters."
            return false
        }
        
        return true
    }
}


