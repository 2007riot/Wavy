//
//  TabbedView.swift
//  WelcomeApp
//
//  Created by Francesco Amirante on 18/11/21.
//

import SwiftUI

struct TabbedView: View {
    @State var shouldShowOnboarding: Bool = true
    var body: some View {
        
        TabView {
            //NavigationViewFindScreen()
            //NavigationViewFindScreen()
            FindScreen(user: User(firstName: "Francesco", lastName: "Amirante", age: 21, shortBio: "I love travelling", Image: "picture1", nationality: "Italian", speakingLanguages: "Italian, English, Spanish"))
                .tabItem {
                    Text("Find")
                    Image(systemName: "hand.wave")
                        .font(.system(size: 24))
                }
            memoryScreen()
                .tabItem {
                    Text("Memories")
                    Image(systemName: "photo.on.rectangle.angled")
                        .font(.system(size: 24))
                }
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding) {
        } content: {
            mainOnboarding(shouldShowOnboarding: $shouldShowOnboarding)

        }
     
    }
        
       
}

struct TabbedView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}
