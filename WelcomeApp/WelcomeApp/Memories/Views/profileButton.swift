//
//  SwiftUIView.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 18/11/21.
//

import SwiftUI

struct profileButton: View {
    var body: some View {

            Button {
                print("go to profile was tapped")
                //here supposed to go to settings screen
                
            } label: {
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 24))
                
            }
        }
      
    
   
}
//NavigationLink(destination: Text("Here photo view that Emmanuele does")) {
//    VStack(alignment: .leading) {
//        Image(photo.photoName)
//        .frame(width: 183, height: 183, alignment: .leading)
//        Text(photo.titles)
//            .foregroundColor(.black)
//    }
//
//}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        profileButton()
    }
}
