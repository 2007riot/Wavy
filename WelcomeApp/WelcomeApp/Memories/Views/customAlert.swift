//
//  customAlert.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 21/11/21.
//

import SwiftUI

struct customAlert: View {
    let screenSize = UIScreen.main.bounds//to get the size of the user screen
    @Binding var isSHown: Bool
    @Binding var userText: String
    var title: String = "Create an album"
    
    var body: some View {
        VStack {
            
            Text(title)
            TextField("", text: $userText)
                .textFieldStyle(.roundedBorder)
            HStack {
                Button("Cancel") {
                    
                }
                Button("Create") {
                    
                }
            }
            
            
            
        }
        .padding()
        .frame(width: screenSize.width * 0.7, height: screenSize.height * 0.3)
        .background(Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        
    }
}

struct customAlert_Previews: PreviewProvider {
    static var previews: some View {
        customAlert(isSHown: .constant(true), userText: .constant("here user put the name of the album"))
    }
}
