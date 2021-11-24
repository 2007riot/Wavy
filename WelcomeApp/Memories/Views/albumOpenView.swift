//
//  albumOpenView.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 24/11/21.
//

import SwiftUI


struct albumOpenView: View {
    @StateObject var pictureStore = PictureStore()
    var columns = [
        //        GridItem(fixed, spacing: 1),
        //        GridItem(spacing: 1),
        //        GridItem(spacing: 1),
        //        GridItem(spacing: 1),
        GridItem(.adaptive(minimum: 102))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 1) {
                ForEach(pictureStore.pictures, id: \.id) {
                    picture in
                    seeImage(picture: picture)
                }
                
            }
        }
    }
}

struct albumOpenView_Previews: PreviewProvider {
    static var previews: some View {
        albumOpenView()
    }
}
