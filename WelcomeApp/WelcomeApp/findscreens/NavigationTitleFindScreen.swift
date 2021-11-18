//
//  findscreen.swift
//  WelcomeApp
//
//  Created by Francesco Amirante on 18/11/21.
//

import SwiftUI

struct NavigationTitleFindScreen: View {
    var body: some View {
        NavigationView {
            ZStack{
                let gradient = Gradient(colors: [.blue, .white])

                LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .topTrailing)
                LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
                LinearGradient(gradient: gradient, startPoint: .bottomTrailing, endPoint: .topLeading)
                .navigationTitle("Welcome")
                
                UserIcon()
                    .frame(width: 144, height: 182)
                    .offset(x: 0, y: -230)
        }
}
}
struct NavigationTitleFindScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTitleFindScreen()
    }
}
}
