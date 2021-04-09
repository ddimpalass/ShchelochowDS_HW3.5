//
//  NumbersList.swift
//  ShchelochowDS_HW3.5
//
//  Created by Apple on 08.04.2021.
//

import SwiftUI

struct NumbersList: View {
    let persons: [Person]
    
    var body: some View {
        List {
            ForEach(persons) { person in
                Section(header: Text(person.fullName)) {
                    CustomRow(imageSystemName: "phone", text: person.number)
                    CustomRow(imageSystemName: "tray", text: person.email)
                }
            }
        }
    }
}

struct NumbersList_Previews: PreviewProvider {
    static var previews: some View {
        NumbersList(persons: [])
    }
}
