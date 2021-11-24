//
//  UserStore.swift
//  WelcomeApp
//
//  Created by Galina Aleksandrova on 22/11/21.
//

import Foundation
import SwiftUI

class UsersStore: ObservableObject {
    
    @Published var users: [User] = []
    
    var user1 = User(firstName: "Francesco", lastName: "Amirante", age: 21, shortBio: "I love travelling and new languages", Image: "user1", nationality: "Italian", speakingLanguages: "Italian, English, Spanish")
    var user2 = User(firstName: "Maria", lastName: "Kim", age: 25, shortBio: "Love asian food and meet new people", Image: "user2", nationality: "German", speakingLanguages: "German, English, French")
    var user3 = User(firstName: "Jose", lastName: "Morata", age: 23, shortBio: "Engineer that wants to make new friends", Image: "user3", nationality: "Spanish", speakingLanguages: "English, Spanish, Italian")
    var user4 = User(firstName: "Kate", lastName: "Morata", age: 23, shortBio: "Engineer that wants to make new friends", Image: "user4", nationality: "Spanish", speakingLanguages: "English, Spanish, Italian")
    var user5 = User(firstName: "Mark", lastName: "Morata", age: 23, shortBio: "Engineer that wants to make new friends", Image: "user5", nationality: "Spanish", speakingLanguages: "English, Spanish, Italian")
    var user6 = User(firstName: "Francesca", lastName: "Morata", age: 23, shortBio: "Engineer that wants to make new friends", Image: "user6", nationality: "Spanish", speakingLanguages: "English, Spanish, Italian")
    var user7 = User(firstName: "Juanita", lastName: "Morata", age: 23, shortBio: "Engineer that wants to make new friends", Image: "user7", nationality: "Spanish", speakingLanguages: "English, Spanish, Italian")
    var user8 = User(firstName: "Tom", lastName: "Morata", age: 23, shortBio: "Engineer that wants to make new friends", Image: "user8", nationality: "Spanish", speakingLanguages: "English, Spanish, Italian")
    var user9 = User(firstName: "Jon", lastName: "Morata", age: 23, shortBio: "Engineer that wants to make new friends", Image: "user9", nationality: "Spanish", speakingLanguages: "English, Spanish, Italian")
    var user10 = User(firstName: "Kris", lastName: "Morata", age: 23, shortBio: "Engineer that wants to make new friends", Image: "user10", nationality: "Spanish", speakingLanguages: "English, Spanish, Italian")
    var user11 = User(firstName: "Nuria", lastName: "Morata", age: 23, shortBio: "Engineer that wants to make new friends", Image: "user11", nationality: "Spanish", speakingLanguages: "English, Spanish, Italian")
    var user12 = User(firstName: "Mira", lastName: "Morata", age: 23, shortBio: "Engineer that wants to make new friends", Image: "user12", nationality: "Spanish", speakingLanguages: "English, Spanish, Italian")
        
        
        
        
    
    init() { self.users = [user1,user2,user3,user4,user5,user6,user7,user8,user9,user10,user11,user12] }
                                           }
