//
//  FindScreen.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 22/11/21.
//

import SwiftUI

struct FindScreen: View {
    @StateObject var userStore = UsersStore()
    var user: User
    @State var showUserInfo = false
    @State var shouldShowOnboarding = true
    
    var columns = [
    GridItem(spacing: 30),
    GridItem(spacing: 30),
    GridItem(spacing: 30)
    ]
    var body: some View {
        
        
        NavigationView {
            ZStack {
                Image("gradient")
                    .ignoresSafeArea(.all)
//               LinearGradient(gradient: Gradient(colors: [.white, Color("myBlue"), .white]), startPoint: .topLeading, endPoint: .bottom)
//                    .ignoresSafeArea(.all)
//                Spacer()
            //VStack {
                ScrollView {
                                UserInfoView()
                   Spacer()
                       // .frame(height: 30)
                    LazyVGrid(columns: columns)
                        {
                            ForEach(userStore.users) { user in
                                    Circles(user: user)
                                }
                            }
                            }
                            
                        }
        
            .navigationTitle("Welcome Galina")
//            .navigationBarTitle("Welcome, Galina")
            .navigationBarItems(
                leading : Image(systemName: "arrow.triangle.2.circlepath")
                    .font(.system (size: 24))
                    .foregroundColor(.blue),
                trailing: NavigationLink(destination: {
                    SettingsView()
                }, label: {
                    profileButton()
                })
            )
                    }

            }
}
//        .navigationBarTitle("")
//        .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
                        
        
        

    
//}

struct FindScreen_Previews: PreviewProvider {
    static var previews: some View {
        FindScreen(user: User(firstName: "Francesco", lastName: "Amirante", age: 21, shortBio: "I love travelling", Image: "picture1", nationality: "Italian", speakingLanguages: "Italian, English, Spanish"))
    }
}
