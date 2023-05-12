//
//  SignInEmailView.swift
//  EmailAuth
//
//  Created by Ela Howard on 2023-05-12.
//

import SwiftUI

@MainActor


final class SignInEmailViewModel: ObservableObject
{
    
    @Published var email = ""
    @Published var password = ""
    
    func signIn()
    {
        guard !email.isEmpty, !password.isEmpty else
        {
            print ("Pas de courriel et/ou mot de passe")
            return
        }
        Task {
            do  {
                let returnedUserData = try await AuthManager.shared.createUser(email:email, password: password)
                print ("Usager créé")
                print (returnedUserData)
            }
            catch{
                print ("Erreur: \(error)" )
                
            }
        }

    }
}


struct SignInEmailView: View {
    @StateObject private var  viewModel = SignInEmailViewModel()
    var body: some View {
        VStack{
            
            TextField("Email...", text: $viewModel.email)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(10)
            SecureField("Password...", text: $viewModel.password)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(10)
            
            Button{
                viewModel.signIn()
                
            }label:{
                Text("Se connecter")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height:55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            Spacer()
            
        }
        .padding().navigationTitle("Login avec Email")
    }
}



struct SignInEmailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SignInEmailView()
        }
      
    }
}
