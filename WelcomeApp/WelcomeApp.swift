//
//  WelcomeAppApp.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 15/11/21.
//

import SwiftUI

@main
struct WelcomeApp: App {
    var body: some Scene {
        WindowGroup {
            //mainOnboarding(shouldShowOnboarding: .constant(true))
          TabbedView()
//                onBoarding1(shouldShowOnboarding: .constant(false))
           // onboardingScreens(userName: (""))
            

        }
    }
}
