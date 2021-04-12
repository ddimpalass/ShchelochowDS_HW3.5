//
//  InitialView.swift
//  ShchelochowDS_HW3.5
//
//  Created by Apple on 08.04.2021.
//

import SwiftUI

struct InitialView: View {
    let persons = Person.createContactList()
    
    var body: some View {
        TabView {
            ContactList(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            NumbersList(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
