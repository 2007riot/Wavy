//
//  photoCaptureView.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 19/11/21.
//

import SwiftUI

struct photoCaptureView: View {
    @Binding var showImagePicker: Bool
    @Binding public var imageMade: Image?
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    
    var body: some View {
        ImagePicker(isShown: $showImagePicker, image: $imageMade, sourceType: self.sourceType )
        
        
        Image(imageMade)
    }
}

struct photoCaptureView_Previews: PreviewProvider {
    static var previews: some View {
        photoCaptureView(showImagePicker: .constant(false), imageMade: .constant(Image("picture1")))
    }
}

