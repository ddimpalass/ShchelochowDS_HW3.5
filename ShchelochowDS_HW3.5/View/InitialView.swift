//
//  InitialView.swift
//  ShchelochowDS_HW3.5
//
//  Created by Apple on 08.04.2021.
//

import SwiftUI

struct InitialView: View {
    @State private var selection = 0
    
    let persons = DataManager.createContactList()
    
    init() {
        UITableView.appearance().backgroundColor = .systemFill
    }
    
    var body: some View {
        TabView(selection: $selection) {
            NavigationView {
                ContactList(persons: persons)
                    .tag(0)
                    .navigationTitle("Contact List")
            }
            .tabItem {
                Image(systemName: "person.3")
                Text("Contacts")
            }
            NavigationView {
                NumbersList(persons: persons)
                    .tag(1)
                    .navigationTitle("Contact List")
            }
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
