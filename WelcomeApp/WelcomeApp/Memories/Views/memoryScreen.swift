//
//  memoryScreen.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 15/11/21.
//

import SwiftUI

struct memoryScreen: View {
    @StateObject var photoStore = PhotoStore()
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                LazyVStack (alignment: .center) {
                    PhotoGridView()              }
            }
            .navigationTitle("Memories")
            .navigationBarItems(
                leading: plusButton(),
                trailing: NavigationLink(destination: {
                    Text("Here setting page")
                }, label: {
                    profileButton()
                })
            )
        }
        ///
    }
    
    
}

struct memoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        memoryScreen()
    }
}
