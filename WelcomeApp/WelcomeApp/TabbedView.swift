//
//  TabView.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 15/11/21.
//

import SwiftUI

struct TabbedView: View {
    var body: some View {
        TabView {
            findScreen()
                .tabItem {
                    Text("Find")
                    Image(systemName: "person.3.fill")
                }
            memoryScreen()
                .tabItem {
                    Text("Memories")
                    Image(systemName: "photo.on.rectangle.angled")
                }
            
           
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}
