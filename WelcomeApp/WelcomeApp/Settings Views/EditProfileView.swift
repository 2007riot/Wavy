//
//  EditProfileView.swift
//  WelcomeApp
//
//  Created by Emanuele Cimmelli on 19/11/21.
//

import SwiftUI

struct EditProfileView: View {
    
    @State private var birthdate = Date()
    @State private var username: String = "Galina"
    @State private var showingActionSheet = false
    @State private var shortBio = "Short Bio"
    var nationality = ["English", "Russian", "Italian", "Spanish"]
    @State private var selectedNationality = "Russian"

    var body: some View {
        VStack {
            Image("picture1")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .onTapGesture {
                    self.showingActionSheet = true
                }
            .actionSheet(isPresented: $showingActionSheet){
                ActionSheet(title: Text("Change Photo"), buttons: [
                    .default(Text("Take Photo")),
                    .default(Text("Choose Photo")),
                    .default(Text("Browse...")),
                    .cancel()
                ])
            }
            
            List {
                Section(){
                    TextField("Galina", text: $username)
                    
                    DatePicker("Birth Date", selection: $birthdate, displayedComponents: .date)
                    
                    Picker("Nationality", selection: $selectedNationality) {
                    ForEach(nationality, id: \.self) {
                    Text($0)
                    }
                    }
                                        
                    NavigationLink("Languages", destination: LanguagesView())
                }
                
                TextField("Short Bio", text: $shortBio)
            }
        }.navigationTitle("Edit Profile")
}
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
