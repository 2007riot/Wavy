//
//  mainScreen.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 15/11/21.
//

import SwiftUI

struct onboardingScreen: View {
    @State private var showingPopover = false

    var body: some View {
        VStack(spacing: 30.0){
            Text("Welcome to App Name")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(width: 200.0, height: 180.0)

            HStack{
                Image(systemName: "globe.europe.africa.fill")
                    .foregroundColor(.pink)
                    .font(.system(size: 35))
                    
                    .scaledToFit()
                    
                VStack(alignment: .leading, spacing: 1) {
                    Text("Get a welcome by locals")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Have an unique opportunity to be welcome by local")
                }
            }
            HStack{
                Image(systemName: "globe.europe.africa.fill")
                    .foregroundColor(.pink)
                    .font(.system(size: 35))
                    
                    .scaledToFit()
                    
                VStack(alignment: .leading, spacing: 1) {
                    Text("Get a welcome by locals")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Have an unique opportunity to be welcome by local")
                }
            }
            HStack{
                Image(systemName: "globe.europe.africa.fill")
                    .foregroundColor(.pink)
                    .font(.system(size: 35))
                    
                    .scaledToFit()
                    
                VStack(alignment: .leading, spacing: 1) {
                    Text("Get a welcome by locals")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("Have an unique opportunity to be welcome by local")
                    
                    
                }
            }
            
            
         Button("Continue") {
              showingPopover = true
           }
            
 
        }
        .popover(isPresented: $showingPopover) {
            Text("Your content here")
                .font(.headline)
                .padding()
        }
    }


struct mainScreen_Previews: PreviewProvider {
    static var previews: some View {
        onboardingScreen()
    }
}
}
