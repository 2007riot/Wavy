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
            FindScreen()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Find")
                }
            memoryScreen()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Memories")
                }
            
           
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}
