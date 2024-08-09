//
//  LoginViewModel.swift
//  GetFit
//
//  Created by Arnav Oruganty on 23/07/24.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            if let error = error {
                self?.errorMessage = "Invalid credentials. Please try again."
                print("Login failed with error: \(error.localizedDescription)")
            } else {
                print("Login successful")
            }
        }
    }
    
    private func validate() -> Bool {
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email."
            return false
        }
        
        return true
    }
}


