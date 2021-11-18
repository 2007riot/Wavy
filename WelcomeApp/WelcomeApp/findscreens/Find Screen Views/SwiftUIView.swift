//
//  SwiftUIView.swift
//  WelcomeApp
//
//  Created by Francesco Amirante on 17/11/21.
//

import SwiftUI


struct PresentMeView: View {
    
    var user: User
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            // Horizontally Centered Image
            HStack {
                Spacer()
            }
            // Name and Surname (Title)
            Text("\(user.firstName) \(user.lastName)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            // Description (Body)
            Text("ciao")
        }
        .padding()
    }
}



