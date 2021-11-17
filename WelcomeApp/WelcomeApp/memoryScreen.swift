//
//  memoryScreen.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 15/11/21.
//

import SwiftUI

struct memoryScreen: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Here will be memories screen")
                }
            }
            .navigationTitle("Memories")
//            .navigationBarTitleDisplayMode(.inline)
        }
        
          
    }
}

struct memoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        memoryScreen()
    }
}
