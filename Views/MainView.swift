//
//  ContentView.swift
//  FitnessApp
//
//  Created by Arnav Oruganty on 18/07/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        if viewModel.isLoggedIn, !viewModel.currentUserId.isEmpty {
            // signed in
            HomePageView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
