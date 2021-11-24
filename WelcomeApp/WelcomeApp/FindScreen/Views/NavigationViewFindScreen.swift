//
//  FindScreen.swift
//  WelcomeApp
//
//  Created by Francesco Amirante on 18/11/21.
//

import SwiftUI

struct NavigationViewFindScreen: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                LazyVStack (alignment: .center) {
                    Spacer()
                    .frame(height: 100)
                CurrentUserView()
                    Spacer()
                        .frame(height: 100)
                    
                    UsersGrid()
            }
            .navigationTitle("Welcome")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Welcome")
                        .font(.title)
                        .fontWeight(.bold)
                        
                }
            }
            .navigationBarItems(
                leading: UpdateButtonView(),
                trailing: NavigationLink(destination: {
                    Text("Here setting page")
                }, label: {
                    profileButton()
                })
            )
        }
    }
    
    
}
struct NavigationViewFindScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewFindScreen()
    }
}

}
