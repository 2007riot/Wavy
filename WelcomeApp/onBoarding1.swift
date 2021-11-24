//
//  onboardingScreens.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 23/11/21.
//

import SwiftUI


struct onBoarding1: View {
    //@Binding var shouldShowOnboarding: Bool
    @State public var userName = ""
    //@State private var isNavigating = false
    @State var selection: String?
    var body: some View {
//        NavigationView {
            VStack() {
//                NavigationLink(destination: Onboarding2(), tag: "Onboarding2", selection: $selection) { Onboarding2() }
                
                Text("What is your name?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Spacer(minLength: 50)
                
                TextField(
                    "Type your name",
                    text: $userName
                )
                
                    .frame(width: 350, height: 100)
                    .textFieldStyle(.roundedBorder)
                
                Spacer(minLength: 100)
                Button(action: {
                    self.selection = "Onboarding2"
                }) {
                    Text("Next")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(20)
                        .frame(width: 180, height: 60)
                        .padding(.horizontal, 80)
                        .background(Color.accentColor)
                        .cornerRadius(18)
                        .foregroundColor(.white)
                    
                }
                .padding()
                
                //            Spacer()
                Text("The information you enter constitutes your profile. You can edit it at any time. It will be shown to users around you. None of your data is saved on devices nearby.")
                    .frame(maxWidth: 350)
                
                
            }
            .frame(height: 600, alignment: .center)
        }
//        .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
//
//    }
//
}

struct Onboarding2: View {
    //@Binding var shouldShowOnboarding: Bool
    @State var selectedDate: Date = Date()
    @State public var selection: String?
    var body: some View {
//        NavigationView {
            VStack {
//                NavigationLink(destination: Onboarding3(), tag: "Onboarding3", selection: $selection) { Onboarding3() }
//                NavigationLink(destination: onBoarding1(), tag: "onBoarding1", selection: $selection) { onBoarding1() }
                VStack {
                    Text("When were you born?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                }
                Spacer(minLength: 50)
                DatePicker("Date", selection: $selectedDate, displayedComponents: .date)
                    .frame(width: 350, height: 100)
                Spacer(minLength: 100)
                VStack {
                    Button(action: {
                        self.selection = "Onboarding3"
                    }) {
                        Text("Next")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding(20)
                            .frame(width: 180, height: 60)
                            .padding(.horizontal, 80)
                            .background(Color.accentColor)
                            .cornerRadius(18)
                            .foregroundColor(.white)
                        
                    }
                    Button(action: {
                        self.selection = "onBoarding1"
                    }, label: {
                        Text("Back")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding(20)
                            .frame(width: 180, height: 60)
                            .padding(.horizontal, 80)
                            .background(Color.gray)
                            .cornerRadius(18)
                            .foregroundColor(.white)
                        
                        
                    })
                    
                    
                }
                
                
                
                
            }
            .frame(height: 600, alignment: .center)
        }
//        .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
//    }
//
}

struct Onboarding3: View {
    
   // @Binding var shouldShowOnboarding: Bool
    
    @State var selection: String?
    var nationality = ["English", "Russian", "Italian"]
    @State private var selectnationality = "Russian"
    
    var body: some View {
//        NavigationView {
            VStack {
//                NavigationLink(destination: Onboarding4(), tag: "Onboarding4", selection: $selection) { Onboarding4() }
//
//                NavigationLink(destination: Onboarding2(), tag: "Onboarding2", selection: $selection) { Onboarding2() }
                
                
                Text("What is your nationality?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                
                List {
                    Picker("Nationality", selection: $selectnationality) {
                        ForEach (nationality, id: \.self) {
                            Text($0)
                        }
                    }
                    
                }
              
                
                
                VStack {
                    Button(action: {
                        self.selection = "Onboarding4"
                    }) {
                        Text("Next")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding(20)
                            .frame(width: 180, height: 60)
                            .padding(.horizontal, 80)
                            .background(Color.accentColor)
                            .cornerRadius(18)
                            .foregroundColor(.white)
                        
                        
                    }
                    Button(action: {
                        self.selection = "Onboarding2"
                    }, label: {
                        Text("Back")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding(20)
                            .frame(width: 180, height: 60)
                            .padding(.horizontal, 80)
                            .background(Color.gray)
                            .cornerRadius(18)
                            .foregroundColor(.white)
                        
                        
                    })
                    
                    
                }
                
            }
            
            .background(Color.white)
            .frame(height: 600, alignment: .center)
           
        }
//        .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
//        .navigationTitle("")
//    }
    
}

struct Onboarding4: View {
    //@Binding var shouldShowOnboarding: Bool
    @State public var selection: String?
    var body: some View {
//        NavigationView {
            
            
            VStack {
//                NavigationLink(destination: Onboarding5(shouldShowOnboarding: .constant(true)), tag: "Onboarding5", selection: $selection) { Onboarding5(shouldShowOnboarding: .constant(true)) }
//                NavigationLink(destination: Onboarding3(), tag: "Onboarding3", selection: $selection) { Onboarding3() }
                Text("What languages do you speak?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                List {
                    Text("Italian")
                    Text("Russian")
                    Text("English")
                }
                VStack {
                    Button(action: {
                        self.selection = "Onboarding5"
                    }) {
                        Text("Next")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding(20)
                            .frame(width: 180, height: 60)
                            .padding(.horizontal, 80)
                            .background(Color.accentColor)
                            .cornerRadius(18)
                            .foregroundColor(.white)
                        
                    }
                    Button(action: {
                        self.selection = "Onboarding3"
                    }, label: {
                        Text("Back")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding(20)
                            .frame(width: 180, height: 60)
                            .padding(.horizontal, 80)
                            .background(Color.gray)
                            .cornerRadius(18)
                            .foregroundColor(.white)
                        
                        
                    })
                    
                }
                
            }
            .frame(height: 600, alignment: .center)
        }
//        .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
//    }
}

struct Onboarding5: View {
    @Binding var shouldShowOnboarding: Bool
    @State public var selection: String?
    let showDismissButton = true
    var body: some View {
//        NavigationView {
            VStack {

//                NavigationLink(destination: Onboarding4(), tag: "Onboarding4", selection: $selection) { Onboarding5(shouldShowOnboarding: $shouldShowOnboarding) }
                
               
                
                Text("Tell us more about you")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                Spacer(minLength: 50)
                ZStack {
                    Image("image")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray, lineWidth: 1))
//
//                        .stroke(lineWidth: 0.4)
                        
                    
                    Image(systemName: "plus")
                        .foregroundColor(Color.blue)
                        .font(.system(size: 30))
                       
                }
                
                
                
                Spacer(minLength: 50)
                
                TextField("Bio", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .frame(width: 350, height: 100)
                Spacer(minLength: 100)
                VStack {
                    if showDismissButton {
                        Button(action: {
                            //self.selection = "TabbedView"
                           // self.showDismissButton.toggle()
                            self.shouldShowOnboarding.toggle()
                            //didDismiss()
                        }) {
                            Text("Get started")
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding(20)
                                .frame(width: 180, height: 60)
                                .padding(.horizontal, 80)
                                .background(Color.accentColor)
                                .cornerRadius(18)
                                .foregroundColor(.white)
                            
                        }

                    }
                    
                    Button(action: {
                        self.selection = "Onboarding4"
                    }, label: {
                        Text("Back")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding(20)
                            .frame(width: 180, height: 60)
                            .padding(.horizontal, 80)
                            .background(Color.gray)
                            .cornerRadius(18)
                            .foregroundColor(.white)
                        
                        
                    })
                    
                }
            }
            .frame(height: 600, alignment: .center)
        }
//        .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
//    }
    
    
    
}

//struct onboardingScreens_Previews: PreviewProvider {
//    static var previews: some View {
//        onBoarding1((shouldShowOnboarding: $shouldShowOnboarding))
//    }
//}
