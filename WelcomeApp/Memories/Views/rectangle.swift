//
//  rectangle.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 17/11/21.
//

import SwiftUI

struct rectangle: View {
    var photo: Photo
    
    var body: some View {
        NavigationLink(destination: albumOpenView()) {
            VStack(alignment: .leading) {
                Image(photo.photoName)
                    .frame(width: 183, height: 183, alignment: .leading)
                Text(photo.titles)
                    .foregroundColor(.black)
            }
            
        }
    }
}

struct rectangle_Previews: PreviewProvider {
    static var previews: some View {
        rectangle(photo: Photo(photoName: "picture1", titles: "some photo"))
    }
}
