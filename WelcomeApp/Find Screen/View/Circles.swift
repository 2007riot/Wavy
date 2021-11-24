//
//  Circles.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 22/11/21.
//

import SwiftUI

struct Circles: View {
    @State private var showingSheet = false
    var user: User
    var body: some View {
        VStack(alignment: .center) {
            Image(user.Image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90, alignment: .center)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(lineWidth: 0)
                        .foregroundColor(.gray)
                )
                .shadow(color: .gray,radius: 2)
                //.padding()
                .onTapGesture {
                    showingSheet.toggle()
                }
            
            Text(user.firstName)
                .foregroundColor(.black)
                //.bold()
                .onTapGesture {
                    showingSheet.toggle()
                }
            
        }
        .sheet(isPresented: $showingSheet) {
            SheetView(user: user)
        }
    }
}

struct SheetView: View {
    var user: User
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 10) {
            
            HStack(alignment: .bottom) {
                Spacer()
                Button{
                    presentationMode.wrappedValue.dismiss()
                }
            label: {
                Image(systemName: "xmark.circle.fill")
                    .offset(y: -60)
                    .font(.system(size: 24))
                    .foregroundColor(.gray)
            }
            }
            
            Image(user.Image)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200, alignment: .center)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(lineWidth: 0)
                        .foregroundColor(.gray)
                )
                .shadow(color: .gray,radius: 2)
            
            Text("\(user.firstName) \(user.lastName)")
                .font(.largeTitle)
                .bold()
           
        
        
            
            Spacer()
                .frame(height: 40)
            Group {
//                Text("\(user.firstName) \(user.lastName)")
//                    .font(.largeTitle)
//                    .bold()
                
                Text("""
                 "\(user.shortBio)"
                """)
                    .italic()
                Divider()
                
                Text("Age")
                    .font(.title3)
                    .bold()
                Text("\(user.age)")
                
                Divider()
            }
            Group {
                
                Text("Nationality")
                    .font(.title3)
                    .bold()
                Text("\(user.nationality)")
                
                Divider()
                
                Text("Speaking languages")
                    .font(.title3)
                    .bold()
                Text("\(user.speakingLanguages)")
                
            }
        
        Button("Ask for welcome") {
            //presentationMode.wrappedValue.dismiss()
        }
        
        .frame(width: 300, height: 30)
        .padding()
        .font(.system(size: 20, weight: Font.Weight.bold))
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(18)
        .offset(y: 60)
            
        
        
    }
        .padding()
        .frame(width: 400, height: 400)
    }
        
}


struct Circles_Previews: PreviewProvider {
    static var previews: some View {
        Circles(user: User(firstName: "Francesco", lastName: "Amirante", age: 21, shortBio: "I love travelling", Image: "picture1", nationality: "Italian", speakingLanguages: "Italian, English, Spanish"))
    }
}
