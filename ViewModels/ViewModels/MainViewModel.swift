//
//  MainViewModel.swift
//  GetFit
//
//  Created by Arnav Oruganty on 23/07/24.
//

import Foundation
import FirebaseAuth

class MainViewModel: ObservableObject {
    @Published var currentUserId = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isLoggedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
