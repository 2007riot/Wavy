//
//  myContextMenu.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 17/11/21.
//

import SwiftUI

struct myContextMenu: View {
    var body: some View {
        Text("")
        .contextMenu {
               Button {
                   print("Change country setting")
               } label: {
                   Label("Choose Country", systemImage: "globe")
               }

               Button {
                   print("Enable geolocation")
               } label: {
                   Label("Detect Location", systemImage: "location.circle")
               }
           }
    }
}

struct myContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        myContextMenu()
    }
}
