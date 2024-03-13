//
//  RegisterView.swift
//  TaskDivine
//
//  Created by Tomass Tel on 12/03/2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        let darkblue = Color(red: 0.2, green: 0.1, blue: 0.4)
        
        VStack {
            //Header
            HeaderView(title: "Register",
                       angle: 10,
                       background: darkblue)
              
            Form {
                TextField("Full name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account", background:.green) {
                    viewModel.register()
                    //Attempt registretion
                }
                    
                
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
