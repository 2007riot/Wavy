//
//  UsersData.swift
//  WelcomeApp
//
//  Created by Francesco Amirante on 18/11/21.
//

import Foundation

struct User:Identifiable {
    
    let id = UUID()
    var firstName: String
    var lastName: String
    var shortBio: String
    var Image: String
}

