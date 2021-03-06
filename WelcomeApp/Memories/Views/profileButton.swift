//
//  SwiftUIView.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 18/11/21.
//NavigationLink("settings", destination: SettingsView())

import SwiftUI

struct profileButton: View {
    @State private var isShowingSettingPage = false
    var body: some View {

        NavigationLink(destination: SettingsView(), isActive: $isShowingSettingPage) { SettingsView() }
                Button {
                    print("go to profile was tapped")
                    self.isShowingSettingPage.toggle()
                    
                    
                } label: {
                    Image(systemName: "person.crop.circle")
                        .font(.system(size: 24))
                    
                }
//        NavigationLink {
//            SettingsView()
//        } label: {
//            isShowingSettingPage.toggle()
//        }


//            }
//
//        }

            
        
        
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


struct profileButton_Previews: PreviewProvider {
    static var previews: some View {
        profileButton()
    }
}
