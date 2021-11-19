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
//                        textField: UITextPlaceholder(),
                        primaryButton: .default(Text("Create")),
                        secondaryButton: .cancel()
                        )
                    
                        }
        
                .sheet(isPresented: self.$showImagePicker) {
                    //display my custom view
                    ImagePicker(isShown: $showImagePicker, image: $image, sourceType: self.sourceType )
                }
    }
    }
    func takePicture () {
        //here goes to the screen with a new picture
    }
    
    func createNewAlbum () {
        
        //here alert and creating new album
//        alert("Important message", isPresented: $showingAlert) {
//            Button("First") { }
//            Button("Second") { }
//            Button("Third") { }
//        }
        
//        Alert(title: Text("New Album"), message: Text("Enter a name for this album"), dismissButton: .default(Text("Got it!"))
//              )
    }



struct plusButton_Previews: PreviewProvider {
    static var previews: some View {
        plusButton()
    }
}
