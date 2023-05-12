//
//  SwiftUIView.swift
//  EmailAuth
//
//  Created by Ela Howard on 2023-05-01.
//

import SwiftUI
import Foundation
import FirebaseAuth

struct SwiftUIView: View {
    var body: some View {
        VStack{
            NavigationLink
            {
                Text("Bonjour")
                
            }
            
                label: {
                    Text ("se connecter avec Email")
                        .font(.headline)
                        .foregroundcolour(.white)
                        .frame(height:55)
                        .frame(maxWidth: .infinity )
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            Spacer()
        }.padding().navigationTitle("Se connecter")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack
        {
            SwiftUIView
        }
        
    }
}
