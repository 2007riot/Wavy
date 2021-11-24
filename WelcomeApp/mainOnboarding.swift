//
//  mainOnboarding.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 24/11/21.
//

import SwiftUI

struct mainOnboarding: View {
    @Binding var shouldShowOnboarding: Bool
    var body: some View {
        TabView {
            onBoarding1()
            Onboarding2()
            Onboarding3()
            Onboarding4()
            Onboarding5(shouldShowOnboarding: $shouldShowOnboarding)
        }
        .tabViewStyle(PageTabViewStyle() )
    }
}

//struct mainOnboarding_Previews: PreviewProvider {
//    static var previews: some View {
//        mainOnboarding(shouldShowOnboarding: $shouldShowOnboarding)
//    }
//}
