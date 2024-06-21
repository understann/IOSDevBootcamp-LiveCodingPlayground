//
//  AddContactSheet.swift
//  ContactApp
//
//  Created by Nattapon Howong on 21/6/2567 BE.
//

import SwiftUI

struct AddContactSheet: View {
  
  @Binding var contactListPassed: [ContactStruct]
  
  @State var newContact: ContactStruct = ContactStruct(name: "", age: 0, phone: "", mail: "", isBestFriend: false, school: "")
  
    var body: some View {
      NavigationStack{
        List{
          TextField("Name", text: $newContact.name)
          Picker("Age", selection: $newContact.age){
            ForEach(0..<101){number in
              Text("\(number)")
            }
          }.pickerStyle(.menu)
          TextField("Phone", text: $newContact.phone)
          TextField("Mail", text: $newContact.mail)
          TextField("School", text: $newContact.school)
          Toggle("isBestFriend", isOn: $newContact.isBestFriend)
        }
        .navigationTitle("Add Contact")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
          ToolbarItem{
            Button("Save"){
              contactListPassed.append(newContact)
            }
          }
        }
      }
    }
}

//#Preview {
//  AddContactSheet(contactListPassed: <#Binding<[ContactStruct]>#>)
//}
