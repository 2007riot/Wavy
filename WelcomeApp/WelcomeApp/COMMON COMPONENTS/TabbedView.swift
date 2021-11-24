//
//  TabbedView.swift
//  WelcomeApp
//
//  Created by Francesco Amirante on 18/11/21.
//

import SwiftUI

struct TabbedView: View {
    var body: some View {
        
        TabView {
            //NavigationViewFindScreen()
            memoryScreen()
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

struct TabbedView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}
