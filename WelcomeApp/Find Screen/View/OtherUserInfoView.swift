//
//  UserInfoView.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 22/11/21.
//

import SwiftUI

struct OtherUserInfoView: View {
    
    var user: User
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            // Horizontally Centered Image
            HStack {
                Spacer()
                Image(user.Image)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 8)
                            .foregroundColor(.gray)
                    )
                    .shadow(radius: 10)
                    .padding()
                Spacer()
            }
            // Name and Surname (Title)
            Text("\(user.firstName) \(user.lastName), \(user.age)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            // Description (Body)
            Text(user.shortBio)
        }
        .padding()
    }
}

struct OtherUserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        OtherUserInfoView(user: User(firstName: "Francesco", lastName: "Amirante", age: 21, shortBio: "I love travelling", Image: "picture1", nationality: "Italian", speakingLanguages: "Italian, English, Spanish"))
    }
}
