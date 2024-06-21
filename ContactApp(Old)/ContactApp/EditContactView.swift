//
//  EditContactView.swift
//  ContactApp
//
//  Created by Nattapon Howong on 21/6/2567 BE.
//

import SwiftUI

struct EditContactView: View {
  @Binding var contactPassed: ContactStruct
  
    var body: some View {
      NavigationStack {
        List {
          TextField("Name", text: $contactPassed.name )
          Picker("Age", selection: $contactPassed.age) {
            ForEach (0..<100){ number in
              Text("\(number)")
            }
          }.pickerStyle(.menu)
          
          TextField("Phone", text: $contactPassed.phone)
            .keyboardType(.numberPad)
          
          TextField("Mail", text: $contactPassed.mail)
          
          TextField("School", text: $contactPassed.school)
          
          Toggle("is Bestfriend", isOn: $contactPassed.isBestFriend)
        }
        .navigationTitle("Edit Contact")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
          ToolbarItem{
            Button("Save"){
              
            }
          }
        }
      }
    }
}

#Preview {
  @State  var previewContact = ContactStruct(name: "Tan DevCommu", age: 18, phone: "0999999999", mail: "tan@devcommu.com", isBestFriend: true, school: "Chula")
  return EditContactView(contactPassed: $previewContact)
}
