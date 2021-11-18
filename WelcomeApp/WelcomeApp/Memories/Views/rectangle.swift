//
//  rectangle.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 17/11/21.
//

import SwiftUI

struct rectangle: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(photo1.photoName)
            .frame(width: 183, height: 183, alignment: .leading)
            Text(photo1.titles)
//            Rectangle()
//                .frame(width: 183, height: 183, alignment: .leading)
            
            
        }
            
    }
}

struct rectangle_Previews: PreviewProvider {
    static var previews: some View {
        rectangle()
    }
}
