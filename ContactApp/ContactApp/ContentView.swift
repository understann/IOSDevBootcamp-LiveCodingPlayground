//
//  ContentView.swift
//  ContactApp
//
//  Created by Nattapon Howong on 20/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
  var ContactList: [ContactStruct] = [
    ContactStruct(name: "Chokdee", age: 20, phone: "0999999999", mail: "chokdee@devcommu.com", isBestFriend: true, schoool: "Chula"),
    ContactStruct(name: "Api", age: 20, phone: "0999999999", mail: "api@devcommu.com", isBestFriend: true, schoool: "Openmirai"),
    ContactStruct(name: "Mookrob", age: 20, phone: "0999999999", mail: "mookrob@devcommu.com", isBestFriend: true, schoool: "Chula"),
  ]
  
  
  var body: some View {
    NavigationStack{
      List{
        ForEach(ContactList){singleContact in
          NavigationLink{
            ContactInfoView(contactPassed: singleContact)
          } label:{
            ContactRowView(contactPassed: singleContact)
          }
        }
      }
      .navigationTitle("My Contacts")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button(action: {
            print("Button tapped")
          }) {
            Image(systemName: "plus")
          }
        }
      }
    }
  }
}

#Preview {
  ContentView()
}
