//
//  UsersDataStore.swift
//  WelcomeApp
//
//  Created by Francesco Amirante on 18/11/21.
//

import Foundation
import SwiftUI

class UsersStore: ObservableObject {
    
    @Published var users: [User] = []
    
var user1 = User(firstName: "francesco", lastName: "amirante", shortBio: "ciao", Image: "picture1")
var user2 = User(firstName: "galina", lastName: "aleksandrova", shortBio: "ciao2", Image: "picture2")
var user3 = User(firstName: "francesco", lastName: "amirante", shortBio: "ciao", Image: "picture1")
var user4 = User(firstName: "galina", lastName: "aleksandrova", shortBio: "ciao2", Image: "picture2")
var user5 = User(firstName: "francesco", lastName: "amirante", shortBio: "ciao", Image: "picture1")
var user6 = User(firstName: "galina", lastName: "aleksandrova", shortBio: "ciao2", Image: "picture2")
var user7 = User(firstName: "francesco", lastName: "amirante", shortBio: "ciao", Image: "picture1")
var user8 = User(firstName: "galina", lastName: "aleksandrova", shortBio: "ciao2", Image: "picture2")
var user9 = User(firstName: "francesco", lastName: "amirante", shortBio: "ciao", Image: "picture1")
var user10 = User(firstName: "galina", lastName: "aleksandrova", shortBio: "ciao2", Image: "picture2")
        
        
        
        
    
    init() { self.users = [user1,user2,user3,user4,user5,user6,user7,user8,user9,user10] }
                                           }

