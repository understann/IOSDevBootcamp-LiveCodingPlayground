//
//  ContentView.swift
//  ContactApp
//
//  Created by Nattapon Howong on 20/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
  @State var ContactList: [ContactStruct] = [
    ContactStruct(name: "Chokdee", age: 20, phone: "0999999999", mail: "chokdee@devcommu.com", isBestFriend: true, school: "Chula"),
    ContactStruct(name: "Api", age: 20, phone: "0999999999", mail: "api@devcommu.com", isBestFriend: true, school: "Openmirai"),
    ContactStruct(name: "Mookrob", age: 20, phone: "0999999999", mail: "mookrob@devcommu.com", isBestFriend: true, school: "Chula"),
  ]
  
  @State var showAddContactSheet : Bool = false
  
  
  var body: some View {
    NavigationStack{
      List{
        ForEach($ContactList){singleContact in
          NavigationLink{
            ContactInfoView(contactPassed: singleContact)
          } label:{
            ContactRowView(contactPassed: singleContact)
          }
        }.onDelete(perform: { indexSet in
          for index in indexSet{
            ContactList.remove(at: index)
          }
        })
      }
      .navigationTitle("My Contacts")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button(action: {
            showAddContactSheet.toggle()
          }) {
            Image(systemName: "plus")
          }
        }
      }
    }
    .sheet(isPresented: $showAddContactSheet){
      AddContactSheet(contactListPassed: $ContactList)
    }
  }
}

#Preview {
  ContentView()
}
