//
//  RegistrationView.swift
//  Threads
//
//  Created by admin on 15/09/23.
//

import SwiftUI

struct RegistrationView: View {
    
    @StateObject var viewModel = RegistrationViewModel()
    
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("Image")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Enter your email", text: $viewModel.email)
                    .autocapitalization(.none)
                    .modifier(ThreadsTextViewModifier())
                
                SecureField("Enter your password", text: $viewModel.password)
                    .modifier(ThreadsTextViewModifier())
                
                TextField("Enter your fullName", text: $viewModel.fullname)
                    .modifier(ThreadsTextViewModifier())
                
                TextField("Enter your username", text: $viewModel.username)
                    .autocapitalization(.none)
                    .modifier(ThreadsTextViewModifier())
            }
            
            Button {
                Task{ try await viewModel.createUser() }
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account ?")
                    
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
