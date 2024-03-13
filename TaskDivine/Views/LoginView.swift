//
//  LoginView.swift
//  TaskDivine
//
//  Created by Tomass Tel on 12/03/2024.
//

import SwiftUI


struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        
        let darkblue = Color(red: 0.2, green: 0.1, blue: 0.4)
        
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "TaskDivine", angle: -10, background: darkblue)
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(.red)
                }
                Form {
                    TextField("Email Adress", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                
                    TLButton(
                        title: "Log In",
                        background: .blue) {
                            viewModel.login()
                    }
                    .padding()
                }
                .offset(y: 0)
                // Create Account
                VStack {
                    Text("New here?")
                    
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
