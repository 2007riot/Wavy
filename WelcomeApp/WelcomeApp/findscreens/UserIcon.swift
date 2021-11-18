//
//  UserIcon.swift
//  WelcomeApp
//
//  Created by Francesco Amirante on 18/11/21.
//

import SwiftUI

struct UserIcon: View {
    var body: some View {
        
        VStack{
        Image("UserIcon")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray,lineWidth: 4))
            .shadow(radius: 7)
            Text("User Name")
                .font(.title2)
                .fontWeight(.semibold)
            
            //to bring from data
    }
}
}
struct UserIcon_Previews: PreviewProvider {
    static var previews: some View {
        UserIcon()
    }
}
