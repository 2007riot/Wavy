//
//  twoRectangles.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 18/11/21.
//

import SwiftUI

struct twoRectangles: View {
    var photo: Photo
    var body: some View {
        HStack(alignment: .center, spacing:10) {
//            rectangle(photo: photo.photoName, titles: photo.titles)
//            rectangle(photo: photo.photoName, titles: photo.titles)
            rectangle(photo: Photo(photoName: photo.photoName, titles: photo.titles))
            rectangle(photo: Photo(photoName: photo.photoName, titles: photo.titles))
        }
    }
}

struct twoRectangles_Previews: PreviewProvider {
    static var previews: some View {
        twoRectangles(photo: Photo(photoName: "picture1", titles: "some photo"))
    }
}
