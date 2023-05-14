//
//  LoginView.swift
//  todolist
//
//  Created by Davide Carizzoni on 14/05/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
            VStack{
                // Header
                HeaderView()
                
                // Content
                Form {
                    TextField("Email adsssdress", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    Button {
                        // login
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color.blue)
                               
                            Text("Login")
                                .foregroundColor(Color.white)
                        }
                    }
                }
                // Footer
                VStack{
                    Text("New around here?") 
                    //Button{
                        //Show registration
                    //} label: {
                      //  Text("Create account")
                        //    .fontWeight(Font.Weight.bold)
                    //}
                    NavigationLink(destination: RegisterView()) {
                        Text("Create new account")
                    }
                }.padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
