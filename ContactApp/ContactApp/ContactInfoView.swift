//
//  ContactInfoView.swift
//  ContactApp
//
//  Created by Nattapon Howong on 20/6/2567 BE.
//

import PhotosUI
import SwiftUI

struct ContactInfoView: View {
  
  @Binding var contactPassed: ContactStruct
  
  @State var showEditContactSheet: Bool = false
  
    var body: some View {
      NavigationStack {
        List(){
          VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
            Image(systemName: "person.crop.circle")
              .resizable()
            .frame(width: 200,height: 200)
            
            Text(contactPassed.name)
              .font(.title)
              .bold()
          }
          .padding()
          .frame(maxWidth: .infinity)
            .listRowSeparator(.hidden)
          
          Section("Detail") {
            ContactInfoRowView(titleInfoPassed: "Age", infoPassed: contactPassed.age.description)
            ContactInfoRowView(titleInfoPassed: "School", infoPassed: contactPassed.school)
            ContactInfoRowView(titleInfoPassed: "Phone", infoPassed: contactPassed.phone)
            Toggle("Bestfriend", isOn: $contactPassed.isBestFriend)
          }
          
        }
        .toolbar{
          ToolbarItem{
            Button{
              showEditContactSheet.toggle()
            } label: {
              Image(systemName: "square.and.pencil")
            }
          }
        }
      }
      .sheet(isPresented: $showEditContactSheet, content: {
        EditContactView(contactPassed: $contactPassed)
      })
    }
}

#Preview {
  @State  var previewContact = ContactStruct(name: "Tan DevCommu", age: 18, phone: "0999999999", mail: "tan@devcommu.com", isBestFriend: true, school: "Chula")
  return ContactInfoView(contactPassed: $previewContact)
}
