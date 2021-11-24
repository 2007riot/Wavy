//
//  seeImage.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 24/11/21.
//

import SwiftUI

struct seeImage: View {
    @State var isShowingPicturePage = false
    var picture: Picture
    var body: some View {
        
       // NavigationLink(destination: showingImage(picture: Picture(picture: picture.picture)), isActive: $isShowingPicturePage) { showingImage(picture: Picture(picture: picture.picture)) }
        
        Image(picture.picture)
            .resizable()
            .frame(width: 135, height: 135)
            .clipShape(Rectangle())
            .overlay(
                Rectangle()
                    .stroke(lineWidth: 0)
            )
            .padding()
            .onTapGesture {
                isShowingPicturePage.toggle()
            }
    }
}

struct showingImage: View {
    var picture: Picture
    var body: some View {
        Image(picture.picture)
    }
}

struct seeImage_Previews: PreviewProvider {
    static var previews: some View {
        seeImage(picture: Picture(picture: "1"))
    }
}
