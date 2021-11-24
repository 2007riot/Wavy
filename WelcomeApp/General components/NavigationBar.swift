//
//  NavigationBar.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 16/11/21.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                    
                }
            }
            .navigationTitle("Welcome Galina")
            .toolbar {
                NavigationLink(destination: onboardingScreen()) {
//                    Button(action: {}) {
//                        // Button design
//                    }
                }

        
            }
            //            .navigationBarTitleDisplayMode(.mul)
            
            
            
            
            
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
