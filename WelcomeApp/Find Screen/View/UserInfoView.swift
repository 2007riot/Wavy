//
//  UserInfoView.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 22/11/21.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .center) {
            Spacer(minLength: 100)
        Image("UserPicture")
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(lineWidth: 0)
                    .foregroundColor(.gray)
            )
            .shadow(radius: 5)
            .padding()
            
    }
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
