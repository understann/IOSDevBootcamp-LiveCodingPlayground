//
//  ShowAddContactSheet.swift
//  ContactApp
//
//  Created by Nattapon Howong on 20/6/2567 BE.
//

import SwiftUI

struct AddContactSheet: View {
  @Binding var contactListPassed: [ContactStruct]
  @State var name = ""
  @State var age = 0
  @State var phone = ""
  @State var mail = ""
  @State var isBestFriend = false
  @State var school = ""
  
    var body: some View {
      NavigationStack {
        List {
          TextField("Name", text: $name )
          Picker("Age", selection: $age) {
            ForEach (0..<100){ number in
              Text("\(number)")
            }
          }.pickerStyle(.menu)
          
          TextField("Phone", text: $phone)
            .keyboardType(.numberPad)
          
          TextField("Mail", text: $mail)
          
          TextField("School", text: $school)
          
          Toggle("is Bestfriend", isOn: $isBestFriend)
        }
        .navigationTitle("Add Contact")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
          ToolbarItem{
            Button("Add"){
              contactListPassed.append(ContactStruct(name: name, age: age, phone: phone, mail: mail, isBestFriend: isBestFriend, school: school))
            }
          }
        }
      }
    }
}



//var name: String
//var age: Int
//var phone: String
//var mail: String
//var isBestFriend: Bool
//var school: String
