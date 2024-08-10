import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    @State private var showPassword = false
    @State private var anyErrors = false
    @FocusState private var isFocused: Bool
    
    var loginButtonStatus: Bool {
        return (viewModel.email.isEmpty || viewModel.password.isEmpty)
    }
    
    private func handleLogin() {
        viewModel.login()
        
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
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Login")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .bold()
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Email-ID")
                                .font(.title3)
                                .bold()
                            
                            TextField("Enter your username or email id", text: $viewModel.email)
                                .padding()
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, minHeight: 55)
                                .background(Color.white.opacity(0.1))
                                .clipShape(.capsule)
                                .overlay(
                                    Capsule().stroke(Color.white.opacity(0.1))
                                )
                                .focused($isFocused)
                            
                            Text("Password")
                                .font(.title3)
                                .bold()
                            
                            HStack {
                                if showPassword {
                                    TextField("Enter your password", text: $viewModel.password)
                                        .padding()
                                } else {
                                    SecureField("Enter your password", text: $viewModel.password)
                                        .padding()
                                }
                                
                                Button(action: { showPassword.toggle() }) {
                                    Image(systemName: showPassword ? "eye.slash" : "eye")
                                        .foregroundColor(.gray)
                                        .padding()
                                }
                            }
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, minHeight: 55)
                            .background(Color.white.opacity(0.1))
                            .clipShape(.capsule)
                            .overlay(
                                Capsule().stroke(Color.white.opacity(0.1))
                            )
                            .focused($isFocused)
                        }
                        .padding(.vertical)
                        
                        Button(action: {
                            handleLogin()
                        }) {
                            Text("Login")
                                .font(.title3)
                                .bold()
                                .foregroundColor(loginButtonStatus ? .white.opacity(0.3) : .white)
                                .frame(maxWidth: .infinity, minHeight: 55)
                                .background(loginButtonStatus ? .white.opacity(0.1) : .blue)
                                .clipShape(Capsule())
                        }
                        .disabled(loginButtonStatus)
                        .padding(.vertical)
                        
                        HStack {
                            Spacer()
                            Text("OR")
                                .foregroundStyle(.white.opacity(0.3))
                            Spacer()
                        }
                        
                        HStack {
                            Spacer()
                            Text("Haven't registered yet?")
                                .foregroundStyle(.gray)
                            NavigationLink("Create Account", destination: CreateAccountView())
                            Spacer()
                        }
                        .padding(.vertical)
                        
                        Spacer()
                    }
                    .padding()
                    .toolbar {
                        if isFocused {
                            Button("Done") {
                                isFocused = false
                            }
                        }
                    }
                    .alert(viewModel.errorMessage, isPresented: $anyErrors) {
                        Button("OK", role: .cancel) {
                            anyErrors = false
                            viewModel.errorMessage = ""
                        }
                    }
                }
                .padding(.vertical)
                
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}



#Preview {
    LoginView()
}
