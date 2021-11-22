//
//  CurrentUserView.swift
//  WelcomeApp
//
//  Created by Francesco Amirante on 19/11/21.
//

import SwiftUI

struct CurrentUserView: View {
    var body: some View {
        
            VStack{
        Image("picture1")
            .resizable()
            .scaledToFit()
            .frame(width: 150)
            .clipShape(Circle())
            .shadow(radius:7)
        }
    }
}

struct CurrentUserView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserView()
    }
}

