//
//  plusButton.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 18/11/21.
//

import SwiftUI


struct plusButton: View {
    @State private var showingAlert = false
    @State private var showImagePicker = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    @State var image: Image? = nil
//    @State private var showDialog = false
    //    var text: String
    var body: some View {
        Menu {
            Button {
                takePicture()
                self.sourceType = .camera
                self.showImagePicker.toggle()
                
            } label: {
                Label("Take Picture", systemImage: "camera.fill")
            }
            Button {
                createNewAlbum()
                //showDialog.toggle()
                showingAlert.toggle()
            } label: {
                Label("Create New Album", systemImage: "rectangle.stack.badge.person.crop.fill")
            }
            
        } label: {
            (Image(systemName: "plus")
                .font(.system(size: 24))
            )
        }
        

        
                                .alert(isPresented: $showingAlert) {
                                    Alert(
                                        title: Text("New album"),
                                        message: Text("Enter a name for this album"),
                                        primaryButton: .default(Text("Create")),
                                        secondaryButton: .cancel()
                                        )
        
                                        }
        //
        
        .sheet(isPresented: self.$showImagePicker) {
            ImagePicker(isShown: $showImagePicker, image: $image, sourceType: self.sourceType )
        }
        
        
        
    }
}
func takePicture () {
    //here goes to the screen with a new picture
}

func createNewAlbum () {
    
   
}

struct plusButton_Previews: PreviewProvider {
    static var previews: some View {
        plusButton()
    }
}

