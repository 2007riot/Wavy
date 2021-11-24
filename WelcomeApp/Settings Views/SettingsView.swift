//
//  SettingsView.swift
//  WelcomeApp
//
//  Created by Emanuele Cimmelli on 19/11/21.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Change your profile information")){
                NavigationLink("Edit Profile", destination: EditProfileView())
                }
                
                Section(header: Text("App infos")){
                    Text("Notifications")
                    Text("Privacy")
                    Text("Help")
                    Text("About")
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
