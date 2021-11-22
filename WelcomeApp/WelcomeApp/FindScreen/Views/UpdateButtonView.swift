//
//  UpdateButtonView.swift
//  WelcomeApp
//
//  Created by Francesco Amirante on 19/11/21.
//

import SwiftUI

struct UpdateButtonView: View {
    var body: some View {

            Button {
                print("update button was tapped")
                //here supposed to detect and show new users around
                
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath")
                    .font(.system(size: 24))
            }
    }
}

struct UpdateButtonView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateButtonView()
    }
}
