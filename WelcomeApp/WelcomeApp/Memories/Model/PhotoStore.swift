//
//  photoInstance.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 18/11/21.
//

import Foundation

class PhotoStore: ObservableObject {
    @Published var photos: [Learner] = []
}
let photo1 = Photo(photoName: "picture1", titles: "Napoli")
let photo2 = Photo(photoName: "picture2", titles: "Friends")
let photo3 = Photo(photoName: "picture3", titles: "Barcelona")
let photo4 = Photo(photoName: "picture4", titles: "Rome")
let photo5 = Photo(photoName: "picture5", titles: "Girona")
let photo6 = Photo(photoName: "picture6", titles: "Milan")
let photoArray = [photo1, photo2, photo3, photo4, photo5, photo6]
