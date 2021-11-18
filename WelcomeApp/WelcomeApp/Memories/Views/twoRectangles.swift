//
//  twoRectangles.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 18/11/21.
//

import SwiftUI

struct twoRectangles: View {
    var body: some View {
        HStack(alignment: .center, spacing:10) {
            rectangle()
            rectangle()
        }
    }
}

struct twoRectangles_Previews: PreviewProvider {
    static var previews: some View {
        twoRectangles()
    }
}
