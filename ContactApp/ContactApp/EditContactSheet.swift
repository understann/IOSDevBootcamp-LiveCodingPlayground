//
//  EditContactSheet.swift
//  ContactApp
//
//  Created by Nattapon Howong on 21/6/2567 BE.
//

import SwiftUI

struct EditContactSheet: View {
  
  @Binding var contactPassed: ContactStruct
  
  var body: some View {
    NavigationStack{
      List{
        TextField("Name", text: $contactPassed.name)
        Picker("Age", selection: $contactPassed.age){
          ForEach(0..<101){number in
            Text("\(number)")
          }
        }.pickerStyle(.menu)
        TextField("Phone", text: $contactPassed.phone)
        TextField("Mail", text: $contactPassed.mail)
        TextField("School", text: $contactPassed.school)
        Toggle("isBestFriend", isOn: $contactPassed.isBestFriend)
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

//#Preview {
//    EditContactSheet()
//}
