//
//  plusButton.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 18/11/21.
//

import SwiftUI

struct plusButton: View {
    var body: some View {
        Menu {
            Button {
                takePicture()
//                        NavigationLink(destination: Text("Show camera")) {
////                            Text("Show Camera")
//                        }
            } label: {
                Label("Take Picture", systemImage: "camera.fill")
            }
            Button {
                createNewAlbum()
            } label: {
                Label("Create New Album", systemImage: "rectangle.stack.badge.person.crop.fill")
            }
  
        } label: {
            (Image(systemName: "plus")
                            .font(.system(size: 24))
                          )
        }
    }
    
    func takePicture () {
        //here goes to the screen with a new picture
    }
    
    func createNewAlbum () {
        //here alert and creating new album
    }
}

struct plusButton_Previews: PreviewProvider {
    static var previews: some View {
        plusButton()
    }
}
