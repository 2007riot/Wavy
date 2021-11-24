//
//  PhotoGridView.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 18/11/21.
//

import SwiftUI

struct PhotoGridView: View {
    @StateObject var photoStore = PhotoStore()
    var columns = [
    GridItem(spacing: 0),
    GridItem(spacing: 0)
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(photoStore.photos, id: \.id) {
                    photo in rectangle(photo: photo)
                }
            }
        }
    }
}

struct PhotoGridView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoGridView()
    }
}
