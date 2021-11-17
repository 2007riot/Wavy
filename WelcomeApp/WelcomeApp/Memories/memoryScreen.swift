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
                    Text("jg")
                }
            }
            .navigationTitle("Memories")
            
           
//            .navigationBarTitleDisplayMode(.inline)
        }
        
        ScrollView {
            LazyVStack (alignment: .leading) {
                rectangle()
                    
            }
        }
        
        
        
          
    }
}

struct memoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        memoryScreen()
    }
}
