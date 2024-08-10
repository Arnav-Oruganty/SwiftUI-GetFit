//
//  ProfileView.swift
//  FitnessApp
//
//  Created by Arnav Oruganty on 20/07/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = AccountViewModel()
    @State private var isSheetPresented = false
    @State private var selectedProfilePic: String = "profile"

    let profilePics = ["profilepic1", "profilepic2", "profilepic3", "profilepic4", "profilepic5", "profilepic6", "profilepic7", "profilepic8", "profilepic9", "profilepic10", "profilepic11", "profilepic12", "profilepic13", "profilepic14", "profilepic15"]

    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    Spacer()

                    VStack {
                        Image(user.profilePic)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .foregroundStyle(.blue)
                            .onTapGesture {
                                selectedProfilePic = user.profilePic
                                isSheetPresented.toggle()
                            }

                        Text("\(user.name)")
                            .font(.title2)
                            .bold()

                        Text("\(user.email)")
                            .font(.title3)
                            .foregroundStyle(.gray)
                    }

                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()

                    Button(action: {
                        viewModel.logOut()
                    }) {
                        Text("Logout")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, minHeight: 55)
                            .background(.red)
                            .clipShape(Capsule())
                    }
                    .padding()
                }
            }
            .navigationTitle("Profile")
            .sheet(isPresented: $isSheetPresented) {
                ProfilePicSelectionView(profilePics: profilePics, selectedProfilePic: $selectedProfilePic, isSheetPresented: $isSheetPresented)
                    .presentationDetents([.medium,.large])
            }
            .onChange(of: selectedProfilePic) {
                viewModel.updateProfilePic(selectedProfilePic)
            }
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
}

struct ProfilePicSelectionView: View {
    let profilePics: [String]
    @Binding var selectedProfilePic: String
    @Binding var isSheetPresented: Bool

    var body: some View {
        ScrollView {
            VStack {
                Text("Select Profile Picture")
                    .font(.title2)
                    .bold()
                    .padding()
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(profilePics, id: \.self) { pic in
                        Image(pic)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(selectedProfilePic == pic ? Color.blue : Color.clear, lineWidth: 4)
                            )
                            .onTapGesture {
                                selectedProfilePic = pic
                            }
                    }
                }
                .padding()
                
                Button("Done") {
                    isSheetPresented = false
                }
                .font(.title2)
                .bold()
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            .padding(.horizontal)
        }
    }
}


#Preview {
    ProfileView()
}
