//
//  LanguagesView.swift
//  WelcomeApp
//
//  Created by Emanuele Cimmelli on 21/11/21.
//

import SwiftUI


enum Languages: String, CaseIterable, Hashable {
    case english = "English"
    case russian = "Russian"
    case spanish = "Spanish"
    case italian = "Italian"
}

struct LanguagesView: View {

    @State var languages = [Bool](repeating: false, count: Languages.allCases.count)

    var body: some View {
        Form{
            Section(header: Text("Select the languages you speak")){

            ForEach(0..<languages.count, id:\.self){i in
                Toggle(isOn: self.$languages[i]){
                    Text(Languages.allCases[i].rawValue)
                }.toggleStyle(CheckmarkToggleStyle())
            }
            }
        }.navigationTitle("Languages")
    }
}

struct CheckmarkToggleStyle: ToggleStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            Button(action: { withAnimation { configuration.$isOn.wrappedValue.toggle() }}){
                HStack{
                    configuration.label.foregroundColor(.primary)
                    Spacer()
                    if configuration.isOn {
                        Image(systemName: "checkmark").foregroundColor(.primary)
                    }
                }
            }
        }
    }
}
