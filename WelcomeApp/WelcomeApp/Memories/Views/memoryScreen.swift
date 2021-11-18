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
            
            ScrollView {
                LazyVStack (alignment: .center) {
                    ForEach(rectangle())
                    rectangle()
                    
                    
                }
            }
            .navigationTitle("Memories")
            .navigationBarItems(
                leading: plusButton(),
                trailing: profileButton()
            )
        }
        
    }
    
    
}

struct memoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        memoryScreen()
    }
}
