//
//  CustomRow.swift
//  ShchelochowDS_HW3.5
//
//  Created by Apple on 08.04.2021.
//

import SwiftUI

struct CustomRow: View {
    let imageSystemName: String
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageSystemName)
                .foregroundColor(.blue)
            Text(text)
        }
    }
}

struct CustomRow_Previews: PreviewProvider {
    static var previews: some View {
        CustomRow(imageSystemName: "phone", text: "89999999999")
    }
}
