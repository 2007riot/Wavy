//
//  UserIcon.swift
//  WelcomeApp
//
//  Created by Francesco Amirante on 18/11/21.
//

import SwiftUI

struct UserIconsView: View {
    
    
    var user: User
    var body: some View {
        
            VStack{
                
                Button {
                    print("go to profile was tapped")
                    //here supposed to go to settings screen
                    
                } label: {
                    Image(user.Image)
            .resizable()
            .scaledToFit()
            .frame(width: 100)
            .clipShape(Circle())
            .shadow(radius:7)
            Text("\(user.firstName) \(user.lastName)")
                .font(.caption)
                .multilineTextAlignment(.center)
                

        
    }
        
}
}
}



