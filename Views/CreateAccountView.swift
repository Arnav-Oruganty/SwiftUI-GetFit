//
//  CreateAccountView.swift
//  FitnessApp
//
//  Created by Arnav Oruganty on 18/07/24.
//

import SwiftUI

struct CreateAccountView: View {
    @StateObject private var viewModel = CreateAccountViewModel()
    
    @State private var checkBoxMarked = false
    @State private var showPassword = false
    @State private var anyErrors = false
    @FocusState private var isFocused: Bool
    
    var registerButtonStatus: Bool {
        return (viewModel.name.isEmpty || viewModel.email.isEmpty || viewModel.password.isEmpty || !checkBoxMarked)
    }
    
    private func checkErrors() {
        if viewModel.errorMessage != "" {
            anyErrors = true
        } else {
            anyErrors = false
        }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                HStack {
                    Spacer()
                    
                    Image("App")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 130)
                    
                    Spacer()
                }
                
                ZStack {
                    Color.white.opacity(0.07)
                        .clipShape(.rect(cornerRadius: 20))
                    
                    VStack (alignment: .leading, spacing: 30) {
                        Text("Create Account")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .bold()
                        
                        VStack (alignment: .leading, spacing: 30) {
                            VStack(alignment: .leading){
                                Text("Name")
                                    .font(.title3)
                                    .bold()
                                
                                TextField("Enter your name", text: $viewModel.name)
                                    .padding()
                                    .frame (maxWidth: .infinity , minHeight: 55)
                                    .background(Color.white.opacity(0.1))
                                    .clipShape(.capsule)
                                    .overlay(
                                        Capsule().stroke(Color.white.opacity(0.1))
                                    )
                                    .textInputAutocapitalization(.none)
                                    .autocorrectionDisabled()
                                    .focused($isFocused)
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Email")
                                    .font(.title3)
                                    .bold()
                                
                                TextField("Enter your email", text: $viewModel.email)
                                    .padding()
                                    .frame (maxWidth: .infinity , minHeight: 55)
                                    .background(Color.white.opacity(0.1))
                                    .clipShape(.capsule)
                                    .overlay(
                                        Capsule().stroke(Color.white.opacity(0.1))
                                    )
                                    .textInputAutocapitalization(.none)
                                    .autocorrectionDisabled()
                                    .focused($isFocused)
                            }
                            
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Password")
                                    .font(.title3)
                                    .bold()
                                
                                HStack {
                                    if (showPassword){
                                        TextField ("Enter Password" , text: $viewModel.password)
                                            .padding()
                                    } else {
                                        SecureField ("Enter your password" , text: $viewModel.password)
                                            .padding()
                                    }
                                    
                                    Button (action: {showPassword.toggle()})
                                    {
                                        Image(systemName: showPassword ? "eye.slash" : "eye")
                                            .foregroundColor(.gray)
                                            .padding()
                                    }
                                }
                                .frame (maxWidth: .infinity , minHeight: 55)
                                .background(Color.white.opacity(0.1))
                                .clipShape(.capsule)
                                .overlay(
                                    Capsule().stroke(Color.white.opacity(0.1))
                                )
                                .textInputAutocapitalization(.none)
                                .autocorrectionDisabled()
                                .focused($isFocused)
                                
                                Text("* Password must contain atleast 6 characters")
                                    .font(.footnote)
                                    .foregroundStyle(.gray)
                            }
                        }
                        
                        
                        Toggle("I agree to the terms and conditions.", isOn: $checkBoxMarked)
                            .toggleStyle(CheckboxToggleStyle())
                            .foregroundColor(.gray)
                        
                        
                        Button(action: {
                            viewModel.CreateAccount()
                            checkErrors()
                        }) {
                            Text("Create Account")
                                .font(.title3)
                                .bold()
                                .foregroundColor(registerButtonStatus ? .white.opacity(0.3) : .white)
                                .frame(maxWidth: .infinity, minHeight: 55)
                                .background(registerButtonStatus ? Color.white.opacity(0.1) : .blue)
                                .clipShape(Capsule())
                        }
                        .disabled(registerButtonStatus)
                        
                        Spacer()
                        
                    }
                    .padding()
                    .toolbar {
                        if isFocused{
                            Button("Done"){
                                isFocused = false
                            }
                        }
                    }
                .alert(viewModel.errorMessage, isPresented: $anyErrors){ }
                }
                .padding(.vertical)
            }
            .padding()
        }
    }
}

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 20, height: 20)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            configuration.label
        }
    }
}

#Preview {
    CreateAccountView()
}
