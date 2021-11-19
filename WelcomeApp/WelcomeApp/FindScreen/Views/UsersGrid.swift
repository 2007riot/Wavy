//
//  UsersGrid.swift
//  WelcomeApp
//
//  Created by Francesco Amirante on 19/11/21.
//

import SwiftUI

struct UsersGrid: View {
    @StateObject var usersStore = UsersStore()
    var body: some View {
        
        ScrollView(.vertical) {
            LazyVGrid(
                columns: [
                    GridItem(.fixed(100), spacing: 20),
                    GridItem(.fixed(100), spacing: 20),
                    GridItem(.fixed(100), spacing: 20)
                ], spacing: 20) {

                    ForEach(usersStore.users, id: \.id) { user in   UserIconsView(user: user)
                       
                }
            }
        }
    }
}

struct UsersGrid_Previews: PreviewProvider {
    static var previews: some View {
        UsersGrid()
    }
}
