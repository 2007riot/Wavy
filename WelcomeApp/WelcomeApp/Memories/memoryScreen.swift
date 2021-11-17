//
//  memoryScreen.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 15/11/21.
//

import SwiftUI

struct memoryScreen: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                LazyVStack (alignment: .leading) {
                    rectangle()
                    
                }
            }
            .navigationTitle("Memories")
            .navigationBarItems(
                leading: Menu {
                    Button {
                        NavigationView {
                            NavigationLink(destination: Text("Second View")) {
                                Text("Hello, World!")
                            }
                            
                        }
//                        NavigationLink(destination: Text("Show camera")) {
////                            Text("Show Camera")
//                        }
                    } label: {
                        Label("Take Picture", systemImage: "camera.fill")
                    }
                    Button {
                        createNewAlbum()
                    } label: {
                        Label("Create New Album", systemImage: "rectangle.stack.badge.person.crop.fill")
                    }
          
                } label: {
                    (Image(systemName: "plus")
                                    .font(.system(size: 24))
                                  )
                }
                ,
                trailing: Button {
                    print("go to profile was tapped")
                    //here supposed to go to settings screen
                    
                } label: {
                    Image(systemName: "person.crop.circle")
                        .font(.system(size: 24))
                    
                }
            )
        }
        
        
        
        
        
    }
    
    func takePicture() {
        NavigationLink(destination: camera()) {
            Text("Show Camera")
        }
    }
    func createNewAlbum() { }
}

struct memoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        memoryScreen()
    }
}
