//
//  photoCaptureView.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 19/11/21.
//

import SwiftUI

struct photoCaptureView: View {
    @Binding var showImagePicker: Bool
    @Binding var image: Image?
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    
    var body: some View {
        ImagePicker(isShown: $showImagePicker, image: $image, sourceType: self.sourceType )
    }
}

struct photoCaptureView_Previews: PreviewProvider {
    static var previews: some View {
        photoCaptureView(showImagePicker: .constant(false), image: .constant(Image("picture1")))
    }
}
