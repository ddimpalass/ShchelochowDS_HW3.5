//
//  Model.swift
//  ShchelochowDS_HW3.5
//
//  Created by Apple on 08.04.2021.
//

import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let surname: String
    let number: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func createContactList() -> [Person] {
        var persons: [Person] = []
        
        
        
        let nameArrayShuffled = DataManager.shared.nameArray.shuffled()
        let surnameArrayShuffled = DataManager.shared.surnameArray.shuffled()
        let numberArrayShuffled = DataManager.shared.numberArray.shuffled()
        let emailArrayShuffled = DataManager.shared.emailArray.shuffled()
        
        for index in 0..<nameArrayShuffled.count {
            persons.append(Person(name: nameArrayShuffled[index],
                                  surname: surnameArrayShuffled[index],
                                  number: numberArrayShuffled[index],
                                  email: emailArrayShuffled[index])
            )
        }
        
        return persons
    }
}
