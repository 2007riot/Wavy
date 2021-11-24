//
//  User.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 22/11/21.
//

import Foundation

struct User:Identifiable {
    
    let id = UUID()
    var firstName: String
    var lastName: String
    var age: Int
    var shortBio: String
    var Image: String
    var nationality: String
    var speakingLanguages: String
}
