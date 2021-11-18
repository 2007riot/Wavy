//
//  BackgroundFindScreen.swift
//  WelcomeApp
//
//  Created by Francesco Amirante on 18/11/21.
//

import SwiftUI

struct BackgroundFindScreen: View {
    var body: some View {
        let gradient = Gradient(colors: [.blue, .white])

        LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .topTrailing)
        LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
        LinearGradient(gradient: gradient, startPoint: .bottomTrailing, endPoint: .topLeading)
    }
}

struct BackgroundFindScreen_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundFindScreen()
    }
}
