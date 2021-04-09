//
//  DetailContactInfo.swift
//  ShchelochowDS_HW3.5
//
//  Created by Apple on 08.04.2021.
//

import SwiftUI

struct DetailContactInfo: View {
    let person: Person
        
    var body: some View {
        List {
            HStack() {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .padding()
                Spacer()
            }
            CustomRow(imageSystemName: "phone", text: person.number)
            CustomRow(imageSystemName: "tray", text: person.email)
        }
        .navigationTitle(person.fullName)
    }
}

struct DetailContactInfo_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactInfo(person: Person(name: "Имя", surname: "Фамилия", number: "89999999999", email: "email@email.ru"))
    }
}
