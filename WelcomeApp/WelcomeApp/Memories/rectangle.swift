//
//  rectangle.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 17/11/21.
//

import SwiftUI

struct rectangle: View {
    var body: some View {
//        LazyHStack {
        Rectangle()
            .frame(width: 183, height: 183, alignment: .leading)
//            Rectangle()
//                .frame(width: 183, height: 183, alignment: .leading)
            
            
        //}
            
    }
}

struct rectangle_Previews: PreviewProvider {
    static var previews: some View {
        rectangle()
    }
}
